-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.24-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema `watererp`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `watererp`;
USE `watererp`;

--
-- Table structure for table `watererp`.`access_list`
--

DROP TABLE IF EXISTS `access_list`;
CREATE TABLE `access_list` (
  `id` bigint(20) NOT NULL auto_increment,
  `user_id` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`access_list`
--

/*!40000 ALTER TABLE `access_list` DISABLE KEYS */;
INSERT INTO `access_list` (`id`,`user_id`) VALUES 
 (1,'admin1'),
 (2,'admin2'),
 (3,'admin3'),
 (4,'admin4'),
 (5,'admin5'),
 (6,'admin6'),
 (7,'admin7'),
 (8,'admin8'),
 (9,'admin9'),
 (10,'admin10'),
 (11,'admin11'),
 (12,'admin12'),
 (13,'admin13'),
 (14,'dddd');
/*!40000 ALTER TABLE `access_list` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`application_txn`
--

DROP TABLE IF EXISTS `application_txn`;
CREATE TABLE `application_txn` (
  `id` bigint(20) NOT NULL auto_increment,
  `full_name` varchar(255) default NULL,
  `home_or_office_number` bigint(20) default NULL,
  `regional_number` bigint(20) default NULL,
  `fax_number` bigint(20) default NULL,
  `plot_number` varchar(255) default NULL,
  `area` varchar(255) default NULL,
  `street` varchar(255) default NULL,
  `village_executive_office` varchar(255) default NULL,
  `village_executive_office_number` varchar(255) default NULL,
  `po_box` varchar(255) default NULL,
  `requested_date` timestamp NULL default NULL,
  `photo` varchar(255) default NULL,
  `file_number` varchar(255) default NULL,
  `created_date` timestamp NULL default NULL,
  `updated_date` timestamp NULL default NULL,
  `status` int(11) default NULL,
  `detail_address` varchar(255) default NULL,
  `meter_reading` varchar(255) default NULL,
  `connection_date` date default NULL,
  `remarks` varchar(255) default NULL,
  `can` varchar(255) default NULL,
  `category_master_id` bigint(20) default NULL,
  `customer_id` bigint(20) default NULL,
  `meter_details_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_applicationtxn_categorymaster_id` (`category_master_id`),
  KEY `fk_applicationtxn_customer_id` (`customer_id`),
  KEY `fk_applicationtxn_meterdetails_id` (`meter_details_id`),
  CONSTRAINT `fk_applicationtxn_meterdetails_id` FOREIGN KEY (`meter_details_id`) REFERENCES `meter_details` (`id`),
  CONSTRAINT `fk_applicationtxn_categorymaster_id` FOREIGN KEY (`category_master_id`) REFERENCES `category_master` (`id`),
  CONSTRAINT `fk_applicationtxn_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`application_txn`
--

/*!40000 ALTER TABLE `application_txn` DISABLE KEYS */;
INSERT INTO `application_txn` (`id`,`full_name`,`home_or_office_number`,`regional_number`,`fax_number`,`plot_number`,`area`,`street`,`village_executive_office`,`village_executive_office_number`,`po_box`,`requested_date`,`photo`,`file_number`,`created_date`,`updated_date`,`status`,`detail_address`,`meter_reading`,`connection_date`,`remarks`,`can`,`category_master_id`,`customer_id`,`meter_details_id`) VALUES 
 (1,'ss',11,11,11,'11','ss','ss','ss','11','11','2016-04-13 15:25:04','/api/download/1_9ec3018413e194ccb8868b105a0241f4_bill.png',NULL,'2016-04-13 15:25:59','2016-04-13 15:25:59',0,'11',NULL,NULL,NULL,NULL,2,NULL,NULL),
 (2,'ee',1,1,1,'1','a','a','a','d','1','2016-04-13 15:28:39','/api/download/2_80f0bd292f26a930ade3d9d3ecae9055_MMG.jpg',NULL,'2016-04-13 15:30:29','2016-04-13 15:30:29',0,'a',NULL,NULL,NULL,NULL,1,NULL,NULL),
 (3,'fxgg',11,11,11,'11','sdf','gd','sfds','11','11','2016-04-13 15:37:30','/api/download/3_9e7792c1d6c9804a807d5d71572e7c20_bill.png',NULL,'2016-04-13 15:38:03','2016-04-13 15:38:03',0,'sfd',NULL,NULL,NULL,NULL,2,NULL,NULL);
/*!40000 ALTER TABLE `application_txn` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`application_type_master`
--

DROP TABLE IF EXISTS `application_type_master`;
CREATE TABLE `application_type_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `application_type` varchar(255) default NULL,
  `created_date` timestamp NULL default NULL,
  `updated_date` timestamp NULL default NULL,
  `status` varchar(255) default NULL,
  `created_by` varchar(255) default NULL,
  `updated_by` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`application_type_master`
--

/*!40000 ALTER TABLE `application_type_master` DISABLE KEYS */;
INSERT INTO `application_type_master` (`id`,`application_type`,`created_date`,`updated_date`,`status`,`created_by`,`updated_by`) VALUES 
 (1,'Charity Institute','2016-03-03 00:00:00','2016-03-03 00:00:00','1','abc','abc'),
 (2,'Feasibility Reciept','2016-03-03 00:00:00','2016-03-03 00:00:00','1','abc','abc'),
 (3,'Filling Station','2016-03-03 00:00:00','2016-03-03 00:00:00','1','abc','abc'),
 (4,'General','2016-03-03 00:00:00','2016-03-03 00:00:00','1','abc','abc');
/*!40000 ALTER TABLE `application_type_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`bill_details`
--

DROP TABLE IF EXISTS `bill_details`;
CREATE TABLE `bill_details` (
  `id` bigint(20) NOT NULL auto_increment,
  `can` varchar(255) default NULL,
  `bill_number` varchar(255) default NULL,
  `bill_date` date NOT NULL,
  `bill_time` varchar(255) default NULL,
  `meter_make` varchar(255) default NULL,
  `current_bill_type` varchar(255) default NULL,
  `from_month` varchar(255) default NULL,
  `to_month` varchar(255) default NULL,
  `meter_fix_date` date default NULL,
  `initial_reading` float default NULL,
  `present_reading` float default NULL,
  `units` float default NULL,
  `water_cess` float default NULL,
  `sewerage_cess` float default NULL,
  `service_charge` float default NULL,
  `meter_service_charge` float default NULL,
  `total_amount` float default NULL,
  `net_payable_amount` float default NULL,
  `telephone_no` varchar(255) default NULL,
  `meter_status` varchar(255) default NULL,
  `met_reader_code` varchar(255) default NULL,
  `bill_flag` varchar(255) default NULL,
  `svr_status` varchar(255) default NULL,
  `terminal_id` varchar(255) default NULL,
  `meter_reader_id` varchar(255) default NULL,
  `user_id` varchar(255) default NULL,
  `mobile_no` varchar(255) default NULL,
  `notice_no` varchar(255) default NULL,
  `lat` varchar(255) default NULL,
  `longi` varchar(255) default NULL,
  `no_meter_amt` float default NULL,
  `met_reading_dt` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`bill_details`
--

/*!40000 ALTER TABLE `bill_details` DISABLE KEYS */;
INSERT INTO `bill_details` (`id`,`can`,`bill_number`,`bill_date`,`bill_time`,`meter_make`,`current_bill_type`,`from_month`,`to_month`,`meter_fix_date`,`initial_reading`,`present_reading`,`units`,`water_cess`,`sewerage_cess`,`service_charge`,`meter_service_charge`,`total_amount`,`net_payable_amount`,`telephone_no`,`meter_status`,`met_reader_code`,`bill_flag`,`svr_status`,`terminal_id`,`meter_reader_id`,`user_id`,`mobile_no`,`notice_no`,`lat`,`longi`,`no_meter_amt`,`met_reading_dt`) VALUES 
 (1,'032153790','31197684','2016-04-11','155200','','M','201212','201310','2016-04-02',1.921e+006,1e+007,110000,1650,577.5,110,0,2337.5,2680.06,'1111111111','R','','Y','1','A0000','0000','123','0000000000','','0','0',0,'2016-04-09'),
 (2,'617797689','31197746','2013-11-26','155200','','M','201212','201310','2016-04-02',75000,1e+006,110000,1650,577.5,110,0,2337.5,2985.07,'2222222222','U','','Y','1','A0000','0000','123','0000000000','','0','0',0,'2016-04-09'),
 (3,'011100304','31197513','2016-05-10','155200','','R','201212','201310','2016-04-02',0,0,165000,1650,577.5,110,0,2337.5,7174.29,'0000000000','R','','Y','1','A0000','0000','123','0000000000','0000131130172628','0','0',0,'2016-04-09'),
 (4,'613577519','31197514','2013-11-26','155200','','R','201212','201310','2016-04-02',0,0,165000,1650,577.5,110,0,2337.5,31664.3,'0000000563','R','','Y','1','A0000','0000','123','0000000000','0000131130172738','0','0',0,'2016-04-09');
INSERT INTO `bill_details` (`id`,`can`,`bill_number`,`bill_date`,`bill_time`,`meter_make`,`current_bill_type`,`from_month`,`to_month`,`meter_fix_date`,`initial_reading`,`present_reading`,`units`,`water_cess`,`sewerage_cess`,`service_charge`,`meter_service_charge`,`total_amount`,`net_payable_amount`,`telephone_no`,`meter_status`,`met_reader_code`,`bill_flag`,`svr_status`,`terminal_id`,`meter_reader_id`,`user_id`,`mobile_no`,`notice_no`,`lat`,`longi`,`no_meter_amt`,`met_reading_dt`) VALUES 
 (5,'617738493','31197668','2013-11-26','155200','','R','201212','201310','2016-04-02',0,0,165000,1650,577.5,110,0,2337.5,2768.88,'0000000002','R','','Y','1','A0000','0000','123','0000000000','','0','0',0,'2016-04-09'),
 (6,'617738918','D000000001','2013-11-30','173005','','L','201211','201310','2016-04-02',0,0,180000,1800,630,120,0,2550,3412.75,'0000000063','L','','','1','A0000','0000','123','0000000000','','0','0',0,'2016-04-09'),
 (7,'617757078','D000000002','2013-11-30','173050','','M','201603','201604','2016-04-02',0,12000,10000,2100,735,140,0,2975,2981.38,'0000000006','U','','','1','A0000','0000','123','0000000000','','0','0',0,'2016-04-09'),
 (8,'617757083','D000000003','2013-11-30','173124','','M','201603','201604','2016-04-02',0,15000,100000,2100,735,140,0,2975,2981.38,'0000000005','M','','','1','A0000','0000','123','0000000000','','0','0',0,'2016-04-09');
INSERT INTO `bill_details` (`id`,`can`,`bill_number`,`bill_date`,`bill_time`,`meter_make`,`current_bill_type`,`from_month`,`to_month`,`meter_fix_date`,`initial_reading`,`present_reading`,`units`,`water_cess`,`sewerage_cess`,`service_charge`,`meter_service_charge`,`total_amount`,`net_payable_amount`,`telephone_no`,`meter_status`,`met_reader_code`,`bill_flag`,`svr_status`,`terminal_id`,`meter_reader_id`,`user_id`,`mobile_no`,`notice_no`,`lat`,`longi`,`no_meter_amt`,`met_reading_dt`) VALUES 
 (9,'617757111','D000000004','2013-11-30','173208','','L','201211','201310','2016-04-02',0,0,180000,1800,630,120,0,2550,3095.56,'0000000009','L','','','1','A0000','0000','123','0000000000','','0','0',0,'2016-04-09'),
 (10,'617757186','D000000005','2013-11-30','173246','','L','201211','201310','2016-04-02',0,0,180000,1800,630,120,0,2550,2981.38,'0000000008','L','','','1','A0000','0000','123','0000000000','','0','0',0,'2016-04-09'),
 (11,'617771922','D000000006','2013-11-30','173352','','L','201211','201310','2016-04-02',0,0,180000,1800,630,120,0,2550,2550,'0000000000','L','','','1','A0000','0000','123','0000000000','','0','0',0,'2016-04-09'),
 (12,'617781451','D000000007','2013-11-30','173423','','M','201603','201604','2016-04-02',0,16000,40000,1800,630,120,0,2550,2550,'0000000002','M','','','1','A0000','0000','123','0000000000','','0','0',0,'2016-04-09');
INSERT INTO `bill_details` (`id`,`can`,`bill_number`,`bill_date`,`bill_time`,`meter_make`,`current_bill_type`,`from_month`,`to_month`,`meter_fix_date`,`initial_reading`,`present_reading`,`units`,`water_cess`,`sewerage_cess`,`service_charge`,`meter_service_charge`,`total_amount`,`net_payable_amount`,`telephone_no`,`meter_status`,`met_reader_code`,`bill_flag`,`svr_status`,`terminal_id`,`meter_reader_id`,`user_id`,`mobile_no`,`notice_no`,`lat`,`longi`,`no_meter_amt`,`met_reading_dt`) VALUES 
 (13,'617781710','D000000008','2013-11-30','173449','','M','201603','201604','2016-04-02',0,50000,50000,1800,630,120,0,2550,2550,'0000000002','M','','','1','A0000','0000','123','0000000000','','0','0',0,'2016-04-09'),
 (34,'617756734','55555','2016-04-14','55555','55555','M',NULL,'55555','2016-04-14',55555,55555,55555,55555,55555,55555,55555,55555,55555,'55555','M','55555','55555','55555','55555','55555','55555','55555','55555','55555','55555',55555,'2016-04-14'),
 (38,'617818256','11','2016-04-15','11:11',NULL,'M',NULL,'2016-04-14T18:30:00.000Z',NULL,NULL,111,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-04-15'),
 (39,'617797990','11111','2016-04-15','11:11',NULL,'U',NULL,'2016-04-14T18:30:00.000Z',NULL,NULL,1111,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `bill_details` (`id`,`can`,`bill_number`,`bill_date`,`bill_time`,`meter_make`,`current_bill_type`,`from_month`,`to_month`,`meter_fix_date`,`initial_reading`,`present_reading`,`units`,`water_cess`,`sewerage_cess`,`service_charge`,`meter_service_charge`,`total_amount`,`net_payable_amount`,`telephone_no`,`meter_status`,`met_reader_code`,`bill_flag`,`svr_status`,`terminal_id`,`meter_reader_id`,`user_id`,`mobile_no`,`notice_no`,`lat`,`longi`,`no_meter_amt`,`met_reading_dt`) VALUES 
 (42,'617828744',NULL,'2016-04-15',NULL,NULL,'M','2014-01-31T18:30:00.000Z','2016-04-14T18:30:00.000Z',NULL,NULL,162300,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-04-15');
/*!40000 ALTER TABLE `bill_details` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`bill_full_details`
--

DROP TABLE IF EXISTS `bill_full_details`;
CREATE TABLE `bill_full_details` (
  `id` bigint(20) NOT NULL auto_increment,
  `can` varchar(255) NOT NULL,
  `div_code` varchar(255) NOT NULL,
  `sec_code` varchar(255) default NULL,
  `sec_name` varchar(255) default NULL,
  `met_reader_code` varchar(255) default NULL,
  `conn_date` date NOT NULL,
  `cons_name` varchar(255) NOT NULL,
  `house_no` varchar(255) NOT NULL,
  `address` varchar(255) default NULL,
  `city` varchar(255) NOT NULL,
  `pin_code` varchar(255) default NULL,
  `category` varchar(255) default NULL,
  `pipe_size` float default NULL,
  `board_meter` varchar(255) default NULL,
  `sewerage` varchar(255) default NULL,
  `meter_no` varchar(255) NOT NULL,
  `prev_bill_type` varchar(255) default NULL,
  `prev_bill_month` date default NULL,
  `prev_avg_kl` float default NULL,
  `met_reading_dt` date NOT NULL,
  `prev_reading` float default NULL,
  `met_reading_mo` date default NULL,
  `met_avg_kl` float default NULL,
  `arrears` float default NULL,
  `reversal_amt` float default NULL,
  `installment` float default NULL,
  `other_charges` float default NULL,
  `surcharge` float default NULL,
  `hrs_surcharge` varchar(255) default NULL,
  `res_units` bigint(20) default NULL,
  `met_cost_installment` float default NULL,
  `int_on_arrears` float default NULL,
  `last_pymt_dt` date NOT NULL,
  `last_pymt_amt` float default NULL,
  `bill_number` varchar(255) default NULL,
  `bill_date` date NOT NULL,
  `bill_time` varchar(255) default NULL,
  `meter_make` varchar(255) default NULL,
  `current_bill_type` varchar(255) default NULL,
  `from_month` varchar(255) default NULL,
  `to_month` varchar(255) default NULL,
  `meter_fix_date` date default NULL,
  `initial_reading` float default NULL,
  `present_reading` float default NULL,
  `units` float default NULL,
  `water_cess` float default NULL,
  `sewerage_cess` float default NULL,
  `service_charge` float default NULL,
  `meter_service_charge` float default NULL,
  `total_amount` float default NULL,
  `net_payable_amount` float default NULL,
  `telephone_no` varchar(255) default NULL,
  `meter_status` varchar(255) default NULL,
  `bill_flag` varchar(255) default NULL,
  `svr_status` varchar(255) default NULL,
  `terminal_id` varchar(255) default NULL,
  `meter_reader_id` varchar(255) default NULL,
  `user_id` varchar(255) default NULL,
  `mobile_no` varchar(255) default NULL,
  `notice_no` varchar(255) default NULL,
  `lat` varchar(255) default NULL,
  `longi` varchar(255) default NULL,
  `no_meter_amt` float default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`bill_full_details`
--

/*!40000 ALTER TABLE `bill_full_details` DISABLE KEYS */;
INSERT INTO `bill_full_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`bill_number`,`bill_date`,`bill_time`,`meter_make`,`current_bill_type`,`from_month`,`to_month`,`meter_fix_date`,`initial_reading`,`present_reading`,`units`,`water_cess`,`sewerage_cess`,`service_charge`,`meter_service_charge`,`total_amount`,`net_payable_amount`,`telephone_no`,`meter_status`,`bill_flag`,`svr_status`,`terminal_id`,`meter_reader_id`,`user_id`,`mobile_no`,`notice_no`,`lat`,`longi`,`no_meter_amt`) VALUES 
 (93,'032153790','03','0333','VIJAYNAGAR COLONY','8500','1987-10-10','DEEPAK RUPANI AND OTHERS','10-3-14','OKAZ APARTMENTS','','500028','2',2,'F','T','H2013-070041','M','2016-04-01',696,'2016-04-09',1e+007,'2016-04-01',0,3885.95,0,0,0,18.15,'F',64,0,0,'2014-02-25',9416,'31197684','2016-04-12','061441','','M','201604','201604','2013-01-01',1.921e+006,1e+007,0,1650,165,110,0,1943.15,5829.1,'1111111111','M','Y','1','A0000','0000','123','0000000000','','0','0',0),
 (94,'011100304','01','0111','BAHADURPURA','8500','1995-06-05','MOHD SIRAJ','19-5-32/13/50/A/4','KISHAN BAGH','','500064','2',0.5,'T','T','97518389','R','2016-05-01',15,'2016-04-09',0,'2016-04-01',0,5493.91,0,0,0,18.15,'F',1,0,47.81,'2012-11-29',425,'31197513','2016-04-12','061441','','R','201605','201605','2013-01-01',0,0,0,1650,165,110,0,1943.15,7484.87,'0000000000','R','Y','1','A0000','0000','123','0000000000','0000131130172628','0','0',0);
/*!40000 ALTER TABLE `bill_full_details` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`bill_run_details`
--

DROP TABLE IF EXISTS `bill_run_details`;
CREATE TABLE `bill_run_details` (
  `id` bigint(20) NOT NULL auto_increment,
  `can` varchar(255) default NULL,
  `from_dt` timestamp NULL default NULL,
  `to_dt` timestamp NULL default NULL,
  `status` int(11) default NULL,
  `remarks` varchar(255) default NULL,
  `bill_full_details_id` bigint(20) default NULL,
  `bill_run_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_billrundetails_billfulldetails_id` (`bill_full_details_id`),
  KEY `fk_billrundetails_billrunmaster_id` (`bill_run_master_id`),
  CONSTRAINT `fk_billrundetails_billrunmaster_id` FOREIGN KEY (`bill_run_master_id`) REFERENCES `bill_run_master` (`id`),
  CONSTRAINT `fk_billrundetails_billfulldetails_id` FOREIGN KEY (`bill_full_details_id`) REFERENCES `bill_full_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`bill_run_details`
--

/*!40000 ALTER TABLE `bill_run_details` DISABLE KEYS */;
INSERT INTO `bill_run_details` (`id`,`can`,`from_dt`,`to_dt`,`status`,`remarks`,`bill_full_details_id`,`bill_run_master_id`) VALUES 
 (1,'032153790','2016-04-13 11:52:18','2016-04-13 11:52:18',0,'Failed with error:ALREADY_BILLED',NULL,1),
 (2,'011100304','2016-04-13 11:52:18','2016-04-13 11:52:19',0,'Failed with error:ALREADY_BILLED',NULL,1),
 (3,'613577519','2016-04-13 11:52:19','2016-04-13 11:52:19',0,'Failed with error:Customer not found in CUST_DETAILS for CAN:613577519',NULL,1),
 (4,'617738493','2016-04-13 11:52:19','2016-04-13 11:52:19',0,'Failed with error:Customer not found in CUST_DETAILS for CAN:617738493',NULL,1),
 (5,'617738918','2016-04-13 11:52:19','2016-04-13 11:52:19',0,'Failed with error:Customer not found in CUST_DETAILS for CAN:617738918',NULL,1),
 (6,'617757078','2016-04-13 11:52:19','2016-04-13 11:52:19',0,'Failed with error:Customer not found in CUST_DETAILS for CAN:617757078',NULL,1),
 (7,'617757083','2016-04-13 11:52:19','2016-04-13 11:52:19',0,'Failed with error:Customer not found in CUST_DETAILS for CAN:617757083',NULL,1),
 (8,'617757111','2016-04-13 11:52:19','2016-04-13 11:52:19',0,'Failed with error:Customer not found in CUST_DETAILS for CAN:617757111',NULL,1);
INSERT INTO `bill_run_details` (`id`,`can`,`from_dt`,`to_dt`,`status`,`remarks`,`bill_full_details_id`,`bill_run_master_id`) VALUES 
 (9,'617757186','2016-04-13 11:52:19','2016-04-13 11:52:19',0,'Failed with error:Customer not found in CUST_DETAILS for CAN:617757186',NULL,1),
 (10,'617771922','2016-04-13 11:52:19','2016-04-13 11:52:19',0,'Failed with error:Customer not found in CUST_DETAILS for CAN:617771922',NULL,1),
 (11,'617781451','2016-04-13 11:52:19','2016-04-13 11:52:19',0,'Failed with error:Customer not found in CUST_DETAILS for CAN:617781451',NULL,1),
 (12,'617781710','2016-04-13 11:52:19','2016-04-13 11:52:20',0,'Failed with error:Customer not found in CUST_DETAILS for CAN:617781710',NULL,1),
 (13,'032153790','2016-04-13 12:02:19','2016-04-13 12:02:20',0,'Failed with error:ALREADY_BILLED',NULL,2);
/*!40000 ALTER TABLE `bill_run_details` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`bill_run_master`
--

DROP TABLE IF EXISTS `bill_run_master`;
CREATE TABLE `bill_run_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` timestamp NULL default NULL,
  `area` varchar(255) default NULL,
  `success` int(11) default NULL,
  `failed` int(11) default NULL,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`bill_run_master`
--

/*!40000 ALTER TABLE `bill_run_master` DISABLE KEYS */;
INSERT INTO `bill_run_master` (`id`,`date`,`area`,`success`,`failed`,`status`) VALUES 
 (1,'2016-04-13 11:52:17','0',0,12,'I'),
 (2,'2016-04-13 12:02:19','0',0,1,'I');
/*!40000 ALTER TABLE `bill_run_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`cash_book_master`
--

DROP TABLE IF EXISTS `cash_book_master`;
CREATE TABLE `cash_book_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `cash_book_entry_type` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`cash_book_master`
--

/*!40000 ALTER TABLE `cash_book_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_book_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`category_master`
--

DROP TABLE IF EXISTS `category_master`;
CREATE TABLE `category_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `category_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`category_master`
--

/*!40000 ALTER TABLE `category_master` DISABLE KEYS */;
INSERT INTO `category_master` (`id`,`category_name`) VALUES 
 (1,'Domestic'),
 (2,'Institutional'),
 (3,'Commercial'),
 (4,'Industrial'),
 (5,'Kiosks');
/*!40000 ALTER TABLE `category_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`category_pipe_size_mapping`
--

DROP TABLE IF EXISTS `category_pipe_size_mapping`;
CREATE TABLE `category_pipe_size_mapping` (
  `id` bigint(20) NOT NULL auto_increment,
  `category_master_id` bigint(20) default NULL,
  `pipe_size_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_categorypipesizemapping_categorymaster_id` (`category_master_id`),
  KEY `fk_categorypipesizemapping_pipesizemaster_id` (`pipe_size_master_id`),
  CONSTRAINT `fk_categorypipesizemapping_categorymaster_id` FOREIGN KEY (`category_master_id`) REFERENCES `category_master` (`id`),
  CONSTRAINT `fk_categorypipesizemapping_pipesizemaster_id` FOREIGN KEY (`pipe_size_master_id`) REFERENCES `pipe_size_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`category_pipe_size_mapping`
--

/*!40000 ALTER TABLE `category_pipe_size_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_pipe_size_mapping` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`cdx`
--

DROP TABLE IF EXISTS `cdx`;
CREATE TABLE `cdx` (
  `id` bigint(20) NOT NULL default '0',
  `reversal_ref` varchar(255) default NULL,
  `receipt_no` varchar(255) default NULL,
  `receipt_amt` varchar(255) default NULL,
  `receipt_dt` date default NULL,
  `receipt_time` varchar(255) default NULL,
  `receipt_mode` varchar(255) default NULL,
  `instr_no` varchar(255) default NULL,
  `instr_dt` date default NULL,
  `instr_issuer` varchar(255) default NULL,
  `svr_status` varchar(255) default NULL,
  `can` varchar(255) default NULL,
  `cons_name` varchar(255) default NULL,
  `terminal_id` varchar(255) default NULL,
  `coll_time` timestamp NULL default NULL,
  `txn_status` varchar(255) default NULL,
  `meter_reader_id` varchar(255) default NULL,
  `user_id` varchar(255) default NULL,
  `remarks` varchar(255) default NULL,
  `settlement_id` varchar(255) default NULL,
  `ext_settlement_id` varchar(255) default NULL,
  `lat` varchar(255) default NULL,
  `long_i` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`cdx`
--

/*!40000 ALTER TABLE `cdx` DISABLE KEYS */;
INSERT INTO `cdx` (`id`,`reversal_ref`,`receipt_no`,`receipt_amt`,`receipt_dt`,`receipt_time`,`receipt_mode`,`instr_no`,`instr_dt`,`instr_issuer`,`svr_status`,`can`,`cons_name`,`terminal_id`,`coll_time`,`txn_status`,`meter_reader_id`,`user_id`,`remarks`,`settlement_id`,`ext_settlement_id`,`lat`,`long_i`) VALUES 
 (1,'ReversalRef1','ReceiptNo1','ReceiptAmt1','2016-03-18','ReceiptTime1','ReceiptMode1',NULL,'2016-03-18',NULL,NULL,NULL,NULL,NULL,'2016-03-18 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'LongI1'),
 (2,'ReversalRef2','ReceiptNo2','ReceiptAmt2','2016-03-18','ReceiptTime2','ReceiptMode2','InstrNo2','2016-03-18',NULL,NULL,NULL,NULL,NULL,'2016-03-18 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'LongI2');
/*!40000 ALTER TABLE `cdx` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`coll_details`
--

DROP TABLE IF EXISTS `coll_details`;
CREATE TABLE `coll_details` (
  `id` bigint(20) NOT NULL auto_increment,
  `reversal_ref` varchar(255) default NULL,
  `receipt_no` varchar(255) default NULL,
  `receipt_amt` float default NULL,
  `receipt_dt` timestamp NULL default NULL,
  `receipt_mode` varchar(255) default NULL,
  `instr_no` varchar(255) default NULL,
  `instr_dt` date default NULL,
  `instr_issuer` varchar(255) default NULL,
  `svr_status` varchar(255) default NULL,
  `can` varchar(255) default NULL,
  `cons_name` varchar(255) default NULL,
  `terminal_id` varchar(255) default NULL,
  `coll_time` timestamp NULL default NULL,
  `txn_status` varchar(255) default NULL,
  `meter_reader_id` varchar(255) default NULL,
  `user_id` varchar(255) default NULL,
  `remarks` varchar(255) default NULL,
  `settlement_id` varchar(255) default NULL,
  `ext_settlement_id` varchar(255) default NULL,
  `lat` varchar(255) default NULL,
  `long_i` varchar(255) default NULL,
  `payment_types_id` bigint(20) default NULL,
  `instrument_issuer_master_id` bigint(20) default NULL,
  `collection_type_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_colldetails_paymenttypes_id` (`payment_types_id`),
  KEY `fk_colldetails_instrumentissuermaster_id` (`instrument_issuer_master_id`),
  KEY `fk_colldetails_collectiontypemaster_id` (`collection_type_master_id`),
  CONSTRAINT `fk_colldetails_collectiontypemaster_id` FOREIGN KEY (`collection_type_master_id`) REFERENCES `collection_type_master` (`id`),
  CONSTRAINT `fk_colldetails_instrumentissuermaster_id` FOREIGN KEY (`instrument_issuer_master_id`) REFERENCES `instrument_issuer_master` (`id`),
  CONSTRAINT `fk_colldetails_paymenttypes_id` FOREIGN KEY (`payment_types_id`) REFERENCES `payment_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`coll_details`
--

/*!40000 ALTER TABLE `coll_details` DISABLE KEYS */;
INSERT INTO `coll_details` (`id`,`reversal_ref`,`receipt_no`,`receipt_amt`,`receipt_dt`,`receipt_mode`,`instr_no`,`instr_dt`,`instr_issuer`,`svr_status`,`can`,`cons_name`,`terminal_id`,`coll_time`,`txn_status`,`meter_reader_id`,`user_id`,`remarks`,`settlement_id`,`ext_settlement_id`,`lat`,`long_i`,`payment_types_id`,`instrument_issuer_master_id`,`collection_type_master_id`) VALUES 
 (2,NULL,'123',123,'2016-04-14 16:45:50',NULL,'',NULL,NULL,NULL,'612657362','A.NARAHARI RAO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1),
 (4,NULL,NULL,11,NULL,NULL,'11','2016-04-15',NULL,NULL,'617921989 ',' SRI GATTU SOMAIAH ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,2,2);
/*!40000 ALTER TABLE `coll_details` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`collection_type_master`
--

DROP TABLE IF EXISTS `collection_type_master`;
CREATE TABLE `collection_type_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `coll_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`collection_type_master`
--

/*!40000 ALTER TABLE `collection_type_master` DISABLE KEYS */;
INSERT INTO `collection_type_master` (`id`,`coll_name`) VALUES 
 (1,'BILL PAYMENT'),
 (2,'NEW CONNECTION'),
 (3,'PENALTY'),
 (4,'RECONNECTION');
/*!40000 ALTER TABLE `collection_type_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`complaint_type_master`
--

DROP TABLE IF EXISTS `complaint_type_master`;
CREATE TABLE `complaint_type_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `complaint_type` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`complaint_type_master`
--

/*!40000 ALTER TABLE `complaint_type_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint_type_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`configuration_details`
--

DROP TABLE IF EXISTS `configuration_details`;
CREATE TABLE `configuration_details` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`configuration_details`
--

/*!40000 ALTER TABLE `configuration_details` DISABLE KEYS */;
INSERT INTO `configuration_details` (`id`,`name`,`value`,`description`) VALUES 
 (1,'ADMIN','97',NULL),
 (2,'EWURA','1','EWURA - % of Water Usage Charges'),
 (3,'SEWERAGE','10','Sewerage as % of Water Usage Charges');
/*!40000 ALTER TABLE `configuration_details` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`connection_type_master`
--

DROP TABLE IF EXISTS `connection_type_master`;
CREATE TABLE `connection_type_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `connection_type` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`connection_type_master`
--

/*!40000 ALTER TABLE `connection_type_master` DISABLE KEYS */;
INSERT INTO `connection_type_master` (`id`,`connection_type`) VALUES 
 (1,'Sewerage Connection'),
 (2,'Water And Sewerage');
/*!40000 ALTER TABLE `connection_type_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`current_users`
--

DROP TABLE IF EXISTS `current_users`;
CREATE TABLE `current_users` (
  `id` bigint(20) NOT NULL auto_increment,
  `terminal_id` varchar(255) default NULL,
  `meter_reader_id` varchar(255) default NULL,
  `user_id` varchar(255) default NULL,
  `request_type` varchar(255) default NULL,
  `login_time` timestamp NULL default NULL,
  `ip` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`current_users`
--

/*!40000 ALTER TABLE `current_users` DISABLE KEYS */;
INSERT INTO `current_users` (`id`,`terminal_id`,`meter_reader_id`,`user_id`,`request_type`,`login_time`,`ip`) VALUES 
 (1,'TerminalId1','MeterReaderId1','UserId1','RequestType1','2016-03-18 00:00:00','Ip1'),
 (2,'sss','sss','sss','ssss','2016-04-12 00:00:00','ssss');
/*!40000 ALTER TABLE `current_users` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`cust_details`
--

DROP TABLE IF EXISTS `cust_details`;
CREATE TABLE `cust_details` (
  `id` bigint(20) NOT NULL auto_increment,
  `can` varchar(255) NOT NULL,
  `div_code` varchar(255) default NULL,
  `sec_code` varchar(255) default NULL,
  `sec_name` varchar(255) default NULL,
  `met_reader_code` varchar(255) default NULL,
  `conn_date` date default NULL,
  `cons_name` varchar(255) NOT NULL,
  `house_no` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `pin_code` varchar(255) default NULL,
  `category_unused` varchar(255) default NULL,
  `pipe_size` float default NULL,
  `board_meter` varchar(255) default NULL,
  `sewerage` varchar(255) default NULL,
  `meter_no` varchar(255) default NULL,
  `prev_bill_type` varchar(255) default NULL,
  `prev_bill_month` date default NULL,
  `prev_avg_kl` float default NULL,
  `met_reading_dt` date default NULL,
  `prev_reading` float default NULL,
  `met_reading_mo` date default NULL,
  `met_avg_kl` float default NULL,
  `arrears` float default NULL,
  `reversal_amt` float default NULL,
  `installment` float default NULL,
  `other_charges` float default NULL,
  `surcharge` float default NULL,
  `hrs_surcharge` varchar(255) default NULL,
  `res_units` bigint(20) default NULL,
  `met_cost_installment` float default NULL,
  `int_on_arrears` float default NULL,
  `last_pymt_dt` date default NULL,
  `last_pymt_amt` float default NULL,
  `mobile_no` varchar(255) default NULL,
  `cc_flag` varchar(255) default NULL,
  `cp_flag` varchar(255) default NULL,
  `notice_flag` varchar(255) default NULL,
  `dr_flag` varchar(255) default NULL,
  `lat` varchar(255) default NULL,
  `longi` varchar(255) default NULL,
  `meter_fix_date` date default NULL,
  `tariff_category_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_custdetails_tariffcategorymaster_id` (`tariff_category_master_id`),
  CONSTRAINT `fk_custdetails_tariffcategorymaster_id` FOREIGN KEY (`tariff_category_master_id`) REFERENCES `tariff_category_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`cust_details`
--

/*!40000 ALTER TABLE `cust_details` DISABLE KEYS */;
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1,'011100304','01','0111','BAHADURPURA','8500','1995-06-05','MOHD SIRAJ','19-5-32/13/50/A/4','KISHAN BAGH','','500064','1',0.5,'T','T','97518389','R','2016-05-01',15,'2016-04-09',0,'2016-04-01',0,7484.87,0,0,0,0,'F',1,0,47.81,'2012-11-29',425,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (2,'011100319','01','0111','BAHADURPURA','8500','0001-01-01','ABDUL MAJID, MD.','19-5-17/A/57','BAHADURPURA','','500064','1',0.5,'F','T','06029990','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,0.5,0,0,0,0,'F',1,0,0,'2014-02-04',212,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (3,'032153790','03','0333','VIJAYNAGAR COLONY','8500','1987-10-10','DEEPAK RUPANI AND OTHERS','10-3-14','OKAZ APARTMENTS','','500028','1',2,'F','T','H2013-070041','M','2016-04-01',696,'2016-04-09',1e+007,'2016-04-01',696,5829.1,0,0,0,0,'F',64,0,0,'2014-02-25',9416,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (4,'061224612','06','0612','BANJARA HILLS','8500','1980-01-01','RAMULU, P.','6-3-346/4','DWARAKAPURI COLONY','','500082','1',1,'F','T','98540275','R','2014-01-01',23,'0001-01-01',0,'0001-01-01',23,0,0,0,0,0,'F',10,0,0,'2014-02-19',2045,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (8,'612657362','07','0733','LALAPET','8500','2003-05-08','A.NARAHARI RAO','12-1-356','LALAPET,TARN','','500017','2',0.75,'T','T','','R','2014-01-01',37,'0001-01-01',0,'0001-01-01',0,0.55,0,0,0,0,'F',12,0,0,'2014-02-13',1478,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (9,'612756456','07','0724','SEETHAPALMANDI','8500','2003-10-27','G.MUTHYALAMMA','11-2-472/15/A','NAMALAGUNDU','','500017','2',0.75,'T','T','','R','2014-02-01',90,'0001-01-01',0,'0001-01-01',0,2450.43,0,0,0,0,'F',7,0,0,'2014-02-06',1234,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (15,'617209206','09','0917','BHAGYANAGAR','8500','2010-11-03','T.RAMA KRISHNA','4-32-1/201 PLOT NO 201','SAPTHAGIRI COLONY KUKATPALLY.','','','1',0.75,'F','T','10-1-2216','R','2014-01-01',50,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',5,0,0,'2014-02-21',1059.5,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (16,'617263729','09','0917','BHAGYANAGAR','8500','2011-01-06','V.SRIKANTH GOUD','4-35-564/74A PLOT NO 74PA','BALAKRISHNA NAGAR KUKATPALLY','','','1',0.75,'F','T','10C1634','R','2014-01-01',33,'0001-01-01',0,'0001-01-01',26,16249.3,0,0,0,0,'F',3,0,208.55,'2012-02-23',579.25,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (17,'617756734','06','0612','BANJARA HILLS','8500','2012-09-28','ADEEB  ALI','8-2-318/19/C','ZEHRA NAGAR','','','1',0.75,'F','T','1982','M','2014-01-01',4,'2014-02-10',426000,'2014-01-01',4,0.12,0,0,0,0,'F',1,0,0,'2014-02-19',579,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (19,'617783704','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-11-18','B.JAYAPAUL RAO','PLOT NO.112','SREENIVASAPURAM,VANASTHALIPURA','','','1',0.5,'F','T','12B451062','U','2014-01-01',15,'2013-04-26',70000,'2013-03-01',15,0.5,0,0,0,0,'F',0,0,0,'2014-02-12',627,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (20,'617786147','06','0624','S.R.NAGAR','8500','2012-12-01','PURSHOTAM DAS CHANDAK','7-1-451/14','AMEERPET','','','1',0.5,'F','T','','R','2014-01-01',24,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'2014-02-11',1065,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (21,'617788534','10','0244','ALKAPURI','8500','2012-12-02','SRI JETHA LAL CHOWDARY PATEL  SON OF LATE SHI','11-9-167, LAXMINAGAR COLO','KOTHAPET, HYDERABAD','','','1',0.5,'F','T','12B4335','L','2013-05-01',15,'2012-12-02',0,'2012-11-01',0,-10,3765,0,0,0,'F',1,0,0,'2013-11-13',3775,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (22,'617789082','09','0917','BHAGYANAGAR','8500','2012-12-04','G.SHOBHANADRI','PLOT.NO.177 C, SY.NO.176,','ADDAGUTTA CO-OP, HOUSING SOCIE','','','2',0.75,'F','T','12701-04','M','2014-01-01',45,'2014-02-17',857000,'2014-01-01',45,3665,0,0,0,0,'F',10,0,0,'2014-01-30',3665,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (23,'617789687','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-12-05','K. BALAMANI','PLOT NO.82 NORTHERN PART','SREENIVASAPURAM COLONY,VANASTH','','','1',0.5,'F','T','264','U','2014-01-01',15,'2013-04-26',55000,'2013-03-01',15,-3,0,0,0,0,'F',3,0,0,'2014-02-10',630,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (24,'617789758','09','0917','BHAGYANAGAR','8500','2012-12-07','V.PARADESI','1-2-124','NIZAMPET','','','1',0.5,'F','T','12d38020','M','2014-01-01',2,'2014-02-03',15000,'2014-01-01',2,6238.98,0,0,0,0,'F',0,0,89.81,'2013-06-22',4200,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (25,'617789866','09','0917','BHAGYANAGAR','8500','2012-12-08','K. JAYA RAM REDDY(MS. WINDOW\'S  PROJECTS AND','2-22-125/3, PLOT NO: 11','VIJAYA NAGAR COLONY','','','2',0.75,'F','T','11-001224','M','2014-01-01',22,'2014-02-11',317000,'2014-01-01',22,0,0,0,0,0,'F',12,0,0,'2014-02-15',4394,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (26,'617789902','06','0613','THATTIKHANA','8500','2012-12-04','SMT.J.SWAROOPA RANI','8-2-120/45/5/B1','ROAD NO.2,BANJARA HILLS HYDERA','','','1',0.5,'F','T','12B53122','M','2014-01-01',25,'2014-02-21',925000,'2014-01-01',25,74122.3,0,0,0,0,'F',0,0,1071.58,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (27,'617790069','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-12-03','S.BAL REDDY','PLOT.NO.55','SRI SRINIVASA PURAM COLONY','','500070','1',0.5,'F','T','12B10327','U','2014-01-01',15,'2013-06-21',84000,'2013-05-01',14,-5,0,0,0,0,'F',2,0,0,'2014-02-04',630,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (28,'617790559','10','1021','SAHEBNAGAR (DIV 10)','8500','2012-12-09','SINGIREDDY KAVITHA','8-3-174/24','KARMANGHAT','','','1',0.5,'F','T','12B-67312','M','2014-01-01',16,'2014-02-24',220000,'2014-01-01',16,9327.48,0,0,0,0,'F',4,0,139.07,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (30,'617790591','06','0611','JUBILEE HILLS','8500','2012-12-10','TOTTEMPUDIGOPICHAND','8-2-293/82/NG/7&8','69','','500033','1',0.75,'F','T','NX-11-2495','M','2014-01-01',8,'2014-02-17',121000,'2014-01-01',8,0,0,0,0,0,'F',0,0,0,'2014-02-18',1712.9,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (31,'617791601','09','0917','BHAGYANAGAR','8500','2012-12-03','K. VEERAIAH AND OTHERS','2-22-311/158A PLOT NO 158','ADDAGUTTA CO-OP HOUSING SOCIET','','','2',0.75,'F','T','NX-11-1202','M','2014-01-01',150,'2014-02-13',1.097e+006,'2014-01-01',150,6094.9,0,0,0,0,'F',10,0,0,'2014-01-24',6775,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (32,'617791615','06','0611','JUBILEE HILLS','8500','2012-12-06','NAGINA RAM','8-3-231/277/B/1','SRI KRISHNA NAGAR,YOUSUFGUDA','','','1',0.5,'F','T','12-B-95711','M','2014-01-01',10,'2014-02-19',325000,'2014-01-01',10,-3.4,0,0,0,0,'F',1,0,0,'2014-02-26',630,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (33,'617791621','09','0917','BHAGYANAGAR','8500','2012-12-06','KAMBHAMPATI HIMA BINDU','PLOT NO-98','BHAGYANAGAR CO-OP HOUSING SOCI','','','2',0.75,'F','T','01559-12','M','2014-01-01',99,'2014-02-15',145000,'2014-01-01',99,0.5,0,0,0,0,'F',10,0,0,'2014-02-20',1356,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (34,'617791636','09','0917','BHAGYANAGAR','8500','2012-12-03','S.VENKATA KOTESWARA RAO','PLOT NO-236','SAMATHA NAGAR, BHAGYANAGAR COL','','','1',0.75,'F','T','NX-111053','M','2014-01-01',12,'2014-02-15',622000,'2014-01-01',12,-5.85,0,0,0,0,'F',5,0,0,'2014-02-26',9180,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (35,'617791641','09','0917','BHAGYANAGAR','8500','2012-12-03','SASHANTH GADDIPATI AND OTHERS','PLOT NO.241, SY NO.180, 1','BHAGYANAGAR COLONY, PHASE-3, K','','','1',0.75,'F','T','NX-12-1401','M','2014-01-01',41,'2014-02-15',632000,'2014-01-01',41,-39.57,0,0,0,0,'F',5,0,0,'2014-02-22',3100,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (36,'617791656','09','0917','BHAGYANAGAR','8500','2012-12-03','V.RAGA RANI','PLOT NO-28','BALAKRISHNA NAGAR','','','1',0.5,'F','T','NX-1-1721','R','2014-01-01',24,'0001-01-01',0,'0001-01-01',17,7330,0,0,0,0,'F',6,0,0,'2014-01-28',3665,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (37,'617791966','09','0915','KPHB','8500','2012-12-06','RAMLAL CHOUDARY','LIG 62','DHARMA REDDY COLONY, KPHB','','','2',0.75,'F','T','XL124612','M','2014-01-01',2,'2014-02-16',181000,'2014-01-01',2,3459.64,0,0,0,0,'F',8,0,24.81,'2014-02-12',39450,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (38,'617792814','06','0622','FATHENAGAR','8500','2012-12-13','J. SUBHASH','7-2-1087/11/B','SOWBAGYA NAGAR','','','1',0.75,'F','T','00601620','M','2014-01-01',20,'2014-02-18',55000,'2014-01-01',20,8134.33,0,0,0,0,'F',2,0,109.46,'2014-01-30',1710,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (39,'617792829','06','0622','FATHENAGAR','8500','2012-12-12','A ROOPA','7-2-1735&7-2-1813/A/13','CZECH COLONY','','','1',0.5,'F','T','12B9016','M','2014-01-01',24,'2014-02-01',284000,'2014-01-01',24,-0.6,0,0,0,0,'F',4,0,0,'2014-02-13',1067,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (40,'617792842','05','0535','RAMANTHAPUR (DIV 5)','8500','2012-12-11','MOHAMMED AZHAR','HNO.2-3-512/27/87','BAPUNAGAR AMBERPET','','','1',0.5,'F','T','124813912','M','2014-01-01',23,'2014-02-16',344000,'2014-01-01',23,2129.4,0,0,0,0,'F',2,0,0,'2014-01-06',2130,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (41,'617793638','09','0917','BHAGYANAGAR','8500','2012-12-14','T.RAVI BABU','22-229/A,PLOT NO-205-C&20','ADDAGUTTA CO-OP HOUSING SOCIET','','','2',0.75,'F','T','NX-12-2398','M','2014-01-01',41,'2014-02-13',485000,'2014-01-01',41,0,0,0,0,0,'F',10,0,0,'2014-02-14',3665,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (42,'617793643','09','0917','BHAGYANAGAR','8500','2012-12-14','B. VENKATA RAYUDU AND OTHERS','PLOT NO. 209/A','ADDAGUTTA CO-OP SOCIETY, KUKAT','','','2',1,'F','T','294746-13','M','2013-12-01',72,'2014-01-13',162000,'2013-12-01',72,0,0,0,0,0,'F',15,0,0,'2014-01-20',5487.1,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (43,'617794289','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-12-16','A. NARASIMHA RAO.','PLOT.NO.34/PHASEII','F.C.I.COLONY,VANASTHALIPURAM.','','','1',0.5,'F','T','12B-65753','M','2014-01-01',14,'2014-02-17',124000,'2014-01-01',14,9161.51,0,0,0,0,'F',0,0,131.78,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (44,'617794385','09','0917','BHAGYANAGAR','8500','2012-12-15','SAI JAHNAVI CONSTRUCTIONS','2-22-96/A,PLOT NO.4&5,SY.','VIJAYA NAGAR COLONY,KUKATPALLY','','','2',0.75,'F','T','2012-B-2000986','M','2014-01-01',26,'2014-02-06',310000,'2014-01-01',26,0,0,0,0,0,'F',10,0,0,'2014-02-22',1235,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (45,'617794413','15','0614','MADHAPUR','8500','2012-12-09','M USHA RANI','1-60/8/6/B-7','ROLLING HILLS','','','1',0.75,'F','T','NX-12-2967','M','2014-01-01',12,'2014-02-18',365000,'2014-01-01',12,7595.34,0,0,0,0,'F',1,0,111.97,'2013-11-29',1100,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (47,'617794558','10','0241','SAROORNAGAR','8500','2012-12-15','V.SAI SHANKER','11-5-48/2A','ROAD NO:10,VENKATESWARA COLNY','','','1',0.5,'F','T','09876','M','2013-12-01',9,'2014-01-07',20000,'2013-12-01',9,6264.5,0,0,0,0,'F',3,0,93.97,'2013-12-28',638,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (49,'617795454','09','0917','BHAGYANAGAR','8500','2012-12-17','G.LAXMI','PLOT NO-242 A/1','ADDAGUTTA CO-OPERATIVE HOUSING','','','1',0.75,'F','T','NX-11-20121','M','2014-01-01',16,'2014-02-13',407000,'2014-01-01',16,-0.2,0,0,0,0,'F',4,0,0,'2014-02-21',1713,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (50,'617795785','10','1021','SAHEBNAGAR (DIV 10)','8500','2012-12-14','H.MANJULA','PLOT NO 203,SY NO 57/P,','RTC COLONY,KARMANGHAT,SAROOR N','','','1',0.5,'F','T','12B1963','M','2014-01-01',13,'2014-02-19',165000,'2014-01-01',13,1255,0,0,0,0,'F',3,0,0,'2014-01-09',1072.67,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (51,'617796065','10','1021','SAHEBNAGAR (DIV 10)','8500','2012-12-01','K.KAVITHA','8-12-95/76','RAJEEV SHETTY NAGAR','','500079','1',0.5,'F','T','','L','2013-05-01',15,'0001-01-01',0,'0001-01-01',0,-5,0,0,0,0,'F',4,0,0,'2013-07-17',3770,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (52,'617796070','10','1021','SAHEBNAGAR (DIV 10)','8500','2012-12-09','D.SANJEEVA REDDY','PLOT NO 208','TEACHERS COLONY','','','2',0.75,'F','T','12B3641','L','2014-01-01',50,'2012-12-09',0,'2012-11-01',0,21789.8,30898,0,0,0,'F',6,0,313.47,'2013-12-06',10000,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (53,'617796133','10','1021','SAHEBNAGAR (DIV 10)','8500','2012-12-16','SRI.S.SRIKANTH','PLOT NO.72','SAGAR ENCLAVE(INSIDE) BAIRAMGU','','','1',0.5,'F','T','12B-53164','M','2014-01-01',12,'2014-02-20',132000,'2014-01-01',12,5492.7,0,0,0,0,'F',4,0,73.96,'2014-02-05',4000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (54,'617796148','10','1021','SAHEBNAGAR (DIV 10)','8500','2012-12-16','B.SHYAMALA','PLOT NO 58','LAXMINAGAR JILLELAGUDA SAHEBNA','','','1',0.5,'F','T','12B-67311','R','2014-01-01',17,'0001-01-01',0,'0001-01-01',0,0.2,0,0,0,0,'F',4,0,0,'2014-02-09',245,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (55,'617796879','10','0261','L.B.NAGAR','8500','2012-12-04','P.SAROJINI DEVI','PLOT NO.28','BALAJI NAGAR COLONY,MANSOORABA','','','1',0.5,'F','T','12B49549','M','2014-01-01',11,'2014-02-11',153000,'2014-01-01',11,9236.81,0,0,0,0,'F',0,0,131.78,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (56,'617797132','09','0912','BALANAGAR','8500','2012-12-17','M.PRAVEEN REDDY','1-1/6PLOT NO.C, POT.NO.17','PHOOLBAGH COLONY','','','1',0.5,'F','T','12B 53409','M','2014-01-01',17,'2014-02-08',251000,'2014-01-01',17,724.8,0,0,0,0,'F',4,0,0,'2014-02-18',725,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (57,'617797149','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-12-10','GOVINDU.VENU','PLOT  NO.438','PRASHANTH NAGAR','','','1',0.5,'F','T','12B39939','M','2014-01-01',14,'2014-02-16',192000,'2014-01-01',14,1789.99,0,0,0,0,'F',4,0,26.01,'2014-02-26',620,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (58,'617797179','10','0261','L.B.NAGAR','8500','2012-12-14','KALLEM RAJI REDDY','PLOT NO.4,ROAD NO.2','MAMATHANAGAR,NAGOLE','','','1',0.5,'F','T','12B.7964','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,-5,0,0,0,0,'F',3,0,0,'2014-02-21',630,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (60,'617797551','10','0241','SAROORNAGAR','8500','2012-12-01','THIRUKOVALLURUVENKATARAMANA','PLOTNO.30','MYTHRI NAGAR BAHARDURGUDA VILL','','500074','1',0.5,'F','T','12B-49651','L','2014-01-01',15,'2014-01-15',160000,'2013-12-01',15,628,627.5,0,0,0,'F',4,0,0,'2014-02-14',627,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (61,'617797569','03','0333','VIJAYNAGAR COLONY','8500','2012-12-02','DR.MOHAMMAD ABDUL AZEEMSADIQ','10-3-66/2/A','HUMAYUNNAGAR','','500028','1',0.5,'F','T','12-B-6124','R','2014-01-01',12,'0001-01-01',0,'0001-01-01',12,4534.21,0,0,0,0,'F',0,0,65.9,'2013-07-26',1254,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (62,'617797571','10','0261','L.B.NAGAR','8500','2012-11-06','SMT. PALAVARAPU SHIRISHA','PLOT NO.6/1, WEST PART, S','SAINATH COLONY, HYDERABAD','','','1',0.5,'F','T','12B45903','M','2014-01-01',15,'2014-02-11',152000,'2014-01-01',15,623.24,0,0,0,0,'F',3,0,9.23,'2014-02-14',640,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (63,'617797593','07','0722','MARREDPALLY','8500','2012-11-05','SMT. B. VIJAYA ANDSRI. B. DINESH','10-3-3/20,','EAST MARREDPALLY','','','1',0.75,'F','T','12B2615','M','2014-01-01',27,'2014-02-04',407000,'2014-01-01',27,0.5,0,0,0,0,'F',4,0,0,'2014-02-18',1706,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (64,'617797609','10','1031','MARUTHINAGAR (DIV 10)','8500','2012-11-05','SRI K. RAMESH AND SMT. K. ARATHI','PLOT NO.18, SAMATHAPURI C','MARUTHINAGAR, HYDERABAD','','','1',0.75,'F','T','2012B2.000971','M','2014-01-01',32,'2014-02-26',450000,'2014-01-01',32,3425.44,0,0,0,0,'F',3,0,0,'2014-01-01',2525,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (65,'617797624','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-11-20','SMT.S.URIMILA DEVI','PLOT NO 54 ROAD NO 9','VENKATARAMANA COLONY VANASTHAL','','','1',0.5,'F','T','12B54015','U','2014-01-01',15,'2013-04-26',70000,'2013-03-01',15,-627.5,0,0,0,0,'F',4,0,0,'2014-02-03',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (66,'617797638','10','0243','AUTONAGAR','8500','2012-11-06','M.SESHA  CHARY','PLOT NO .49/50, YELLAREDD','AUTONAGAR,HAYATHNAGAR','','','1',0.5,'F','T','2012A2137670','U','2014-01-01',15,'2012-11-06',0,'2012-10-01',0,1882.5,0,0,0,0,'F',0,0,28.24,'2013-12-11',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (67,'617797648','14','1412','HOUSING BOARD','8500','2012-11-07','SMT.A.SUDHA','PLOT NO 47 SY NO 42/1','VENKATESHWARA NAGAR MEERPET','','','1',0.5,'F','T','88654','L','2013-09-01',15,'2012-11-07',0,'2012-10-01',0,0.5,6902.5,0,0,0,'F',1,0,0,'2013-12-15',6902,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (68,'617797652','15','0614','MADHAPUR','8500','2012-11-04','DR.M.RAMULU','PLOTNO.1,SY.NO 116','INDIRANAGAR,GACHIBOWLI','','500032','1',0.75,'F','T','NX-12-1938','M','2014-01-01',19,'2014-02-18',313000,'2014-01-01',19,3057.5,0,0,0,0,'F',5,0,0,'2014-02-12',6115,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (69,'617797689','10','0241','SAROORNAGAR','8500','2012-11-20','SRI B. KURMAIAH','13-21-112/1/C, BAPUNAGAR','SAROORNAGAR, HYDERABAD','','','1',0.5,'F','T','0816412','L','2014-01-01',14,'2013-06-19',75000,'2013-05-01',11,4516.64,5020,0,0,0,'F',2,0,66.19,'2014-01-29',2500,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (70,'617797693','06','0622','FATHENAGAR','8500','2012-11-07','KARISUBBARAO','PLOT NO 15, BUNGLAOW NO 1','1A(BETWEENROAD NO1 &2','','500018','1',1,'F','T','12B 2952','M','2014-01-01',35,'2014-02-01',620000,'2014-01-01',35,0.5,0,0,0,0,'F',3,0,0,'2014-02-21',7370,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (71,'617797725','03','0333','VIJAYNAGAR COLONY','8500','2012-12-02','SYED MOHAMMED ASLAM','H.NO 10-3-296','HUMAYUN NAGAR','','','1',1,'F','T','125001843','M','2014-01-01',15,'2014-02-10',20000,'2014-01-01',15,27542.7,0,0,0,0,'F',0,0,383.9,'2014-01-24',18000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (72,'617797732','10','1021','SAHEBNAGAR (DIV 10)','8500','2012-11-12','SMT. MOGILI NAGAMANI  WIFE OF SRI M. KOTESWAR','PLOT NO.107, RTC COLONY,','L.B.NAGAR, SAHEBNAGAR, HYDERAB','','','1',0.5,'F','T','12B39888','M','2013-03-01',8,'2013-04-06',40000,'2013-03-01',8,6287.5,0,0,0,0,'F',5,0,94.31,'2014-01-25',2000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (73,'617797747','10','1021','SAHEBNAGAR (DIV 10)','8500','2012-11-12','MAMTHA PADITHEM','PLOT NO.21, ROAD NO.3','SRINIDI CLONY, KARMANGHAT','','500076','1',0.5,'F','T','12B39880','M','2014-01-01',15,'2014-02-24',225000,'2014-01-01',15,9617.45,0,0,0,0,'F',4,0,141.19,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (74,'617797757','10','0241','SAROORNAGAR','8500','2012-11-18','A. LAXMA REDDY','PLOT NO.67','KAKATIYA COLONY,','','','1',0.5,'F','T','12B-49394','M','2014-01-01',14,'2014-02-18',194000,'2014-01-01',14,9883.13,0,0,0,0,'F',0,0,141.19,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (75,'617797767','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-11-24','B.KANAKA CHARY','PLOT NO.10','NEW VENKATA RAMANA COLONY','','500070','1',0.5,'F','T','12B13428','U','2014-01-01',15,'2013-04-26',65000,'2013-03-01',15,-72.5,0,0,0,0,'F',3,0,0,'2014-02-22',700,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (76,'617797855','10','1021','SAHEBNAGAR (DIV 10)','8500','2012-12-01','K.DEVENDRAMMA','PLOT NO.109','RTC.COLONY,RAMA MOHAN NAGAR,CH','','','1',0.5,'F','T','12B-49537','L','2014-01-01',16,'2012-12-01',0,'2012-11-01',0,9480.03,9125.2,0,0,0,'F',1,0,136.88,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (77,'617797860','10','1021','SAHEBNAGAR (DIV 10)','8500','2012-11-25','SRI.K.ASHOK REDDY','PLOT NO 19-B(W-PART)','ANUPAMA NAGAR COLONY N.S.ROAD','','','1',0.5,'F','T','12B5125','U','2014-01-01',15,'2012-11-25',0,'2012-10-01',0,-0.5,0,0,0,0,'F',3,0,0,'2014-02-17',628,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (78,'617797875','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-12-02','J.VIJAYA LAXMI','PLOT NO 350, HNO 5-7-133','B.N.REDDY NAGAR N.S.ROAD','','','1',0.5,'F','T','12b68476','M','2014-01-01',14,'2014-02-20',66000,'2014-01-01',14,1882,0,0,0,0,'F',4,0,28.23,'2013-12-18',2510,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (81,'617797910','14','1421','HUBSIGUDA','8500','2012-12-02','CH PADMA DEVI','PLOT NO 25','8','','','1',0.5,'F','T','12B-49363','M','2014-01-01',16,'2014-02-13',115000,'2014-01-01',16,51459.4,0,0,0,0,'F',7,0,747.23,'2014-01-17',10000,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (82,'617797943','10','1021','SAHEBNAGAR (DIV 10)','8500','2012-11-28','R.LATHA','PLOT NO 25','HASTHINAPURAM NORTH N.S.RAOD','','','2',0.5,'F','T','12b1204','M','2014-01-01',13,'2014-02-16',190000,'2014-01-01',13,28572.5,0,0,0,0,'F',7,0,0,'2014-02-07',5000,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (83,'617797953','10','1031','MARUTHINAGAR (DIV 10)','8500','2012-12-02','PULIGILLA PRAKASH','PLOT NO.110/ABC,SY.NO.129','RAGHAVENDRA COLONY,MOHAN NAGAR','','','1',0.5,'F','T','12B.32349','M','2014-01-01',14,'2014-02-26',208000,'2014-01-01',14,628,0,0,0,0,'F',0,0,0,'2014-02-22',627,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (84,'617797962','05','0531','ADIKMET DMA-2','8500','2012-12-01','SRI.P.SREERAMULU','2-2-1109/2/C','GANGABOWLI','','','1',0.5,'F','T','12.B-40215','M','2014-01-01',15,'2014-02-12',190000,'2014-01-01',15,629,0,0,0,0,'F',0,0,0,'2014-02-18',624,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (85,'617797987','06','0622','FATHENAGAR','8500','2012-12-01','SRI SARDAR RAGHUBEER SINGH','7-1-282/C/1/92','B.K.GUDA,BALKAMPET,HYDERABAD','','','1',0.5,'F','T','12A33211','M','2014-01-01',10,'2014-02-09',95000,'2014-01-01',10,2510,0,0,0,0,'F',1,0,37.65,'2013-11-18',6275,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (86,'617797990','06','0611','JUBILEE HILLS','8500','2012-12-03','R.SUNDER VADAN REP BY THREEMURTHY','PN-PLOT NO 37','PRASHASAN NAGAR','','','1',0.5,'F','T','12B53255','R','2014-01-01',40,'0001-01-01',0,'0001-01-01',40,6740.43,0,0,0,0,'F',1,0,101.11,'2013-11-29',38319,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (87,'617798006','06','0632','VENGALRAONAGAR','8500','2012-12-07','G.ANJANEYULU','8-3-225/A/171/A','YADAGIRI NAGAR,YOUSUFGUDA HYDE','','','1',0.5,'F','T','88085','M','2014-01-01',15,'2014-02-03',199000,'2014-01-01',15,0,0,0,0,0,'F',0,0,0,'2014-02-12',642,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (88,'617798012','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-12-04','ERLAPALLY KRISHNA REDDY','PLOT NO.223','SREE SRINIVASAPURAMM COLONY,VA','','','1',0.5,'F','T','53261','U','2014-01-01',15,'2013-06-20',85000,'2013-05-01',15,-20,0,0,0,0,'F',3,0,0,'2014-02-11',1900,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (89,'617798027','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-12-16','BHARATHI REDDYBOKKA','5-7-252/1','B.N. REDDY NAGAR','','500070','1',0.5,'F','T','12B53056','U','2014-01-01',14,'2013-08-13',113000,'2013-07-01',14,-0.5,0,0,0,0,'F',3,0,0,'2014-02-10',628,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (90,'617798032','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-12-02','AMARLINGA REDDYALVA','PLOT NO 809','SRI KRISHNA DEVARAYA NAGAR COL','','500070','1',0.5,'F','T','12B-57311','U','2014-01-01',15,'2012-12-02',0,'2012-11-01',0,9217.98,0,0,0,0,'F',2,0,131.78,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (91,'617798047','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-12-02','K . BHAGYA  LAXMI','PLOT NO .212','F C I COLONY  VANASTHALIPURAM','','','1',0.75,'F','T','nx-12-1707','M','2014-01-01',33,'2014-02-17',230000,'2014-01-01',33,7857.17,0,0,0,0,'F',1,0,112.66,'2013-09-23',4000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (92,'617798051','06','0612','BANJARA HILLS','8500','2012-12-08','K.KOTESHWAR RAO','8-2-609/17/M','GOURI SHANKER NAGAR,ROAD NO 11','','','1',0.5,'F','T','12B-54147','M','2014-01-01',20,'2014-02-14',35000,'2014-01-01',20,9159.78,0,0,0,0,'F',0,0,135.42,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (93,'617798080','03','0311','TOLI CHOWK','8500','2012-11-29','MOHAMMED ABDUL WAJEED','8-1-423/A/236','DIAMOND HILL,SHAIKPET,HYDERABA','','','1',0.5,'F','T','12B-54018','U','2014-01-01',15,'2012-11-29',0,'2012-10-01',0,9883.14,0,0,0,0,'F',1,0,141.19,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (94,'617798095','03','0311','TOLI CHOWK','8500','2012-11-22','NAFEES BEGUM','8-1-423/A/220','DIAMOND HILLS,SHAIKPET HYDERAB','','','1',0.5,'F','T','12B-40082','M','2014-01-01',10,'2014-02-21',108000,'2014-01-01',10,627.7,0,0,0,0,'F',2,0,0,'2014-02-06',724,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (95,'617798103','03','0311','TOLI CHOWK','8500','2012-11-22','KHAJA MOINUDDIN','8-1-423/A/323','DIAMOND HILL,SHAIKPET,HYDERABA','','','1',0.5,'F','T','12B-45917','U','2014-01-01',15,'2012-11-22',0,'2012-10-01',0,631.32,0,0,0,0,'F',2,0,9.41,'2014-01-17',3780,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (96,'617798198','03','0311','TOLI CHOWK','8500','2012-12-15','S.VIJAYA LAKSHMI','8-1-299/A/75','VETERINARY COLONY','','','1',0.5,'F','T','12B-49687','M','2014-01-01',5,'2014-02-04',135000,'2014-01-01',5,0,0,0,0,0,'F',0,0,0,'2014-02-18',212,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (97,'617798206','15','0614','MADHAPUR','8500','2012-11-08','C.SUDARSHANAMMA','1-90/16/,P.NO.6','VITTALRAO NAGAR,MADHAPUR','','','1',0.75,'F','T','12B1175','M','2014-01-01',44,'2014-02-19',534000,'2014-01-01',44,15.07,0,0,0,0,'F',5,0,0.23,'2014-02-26',3050,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (98,'617798211','15','0614','MADHAPUR','8500','2012-11-03','B.GOPAL(TRIGUNA MANSION)','1-62/151,P.NO.151&27','KAVURI HILLS,GUTTLAGUMPET','','','1',0.75,'F','T','NX-12-1585','M','2014-01-01',29,'2014-02-03',346000,'2014-01-01',29,620.12,0,0,0,0,'F',4,0,8.69,'2014-01-28',16000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (99,'617798231','15','0614','MADHAPUR','8500','2012-11-16','G VENKATESHWARLU','P.NO.1166','SIDDIQUE NAGAR,GACHIBOWLI','','','1',0.5,'F','T','12B54016','L','2014-01-01',15,'2012-11-16',0,'2012-10-01',0,-22.5,9412.5,0,0,0,'F',4,0,0,'2014-02-22',650,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (100,'617798246','15','0614','MADHAPUR','8500','2012-11-02','B.CHANAKYA','2-41/19','KOTHAGUDA,KONDAPUR','','','1',0.5,'F','T','12B45393','L','2013-02-01',15,'2012-11-02',0,'2012-10-01',0,0,2510,0,0,0,'F',3,0,0,'2013-03-13',2510,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (102,'617798417','03','0311','TOLI CHOWK','8500','2012-11-09','SYED ALI HYDER HUSSAINI','H.NO 8-1-398/SE/19','PARAMOUNT TOLICHOWKI','','','2',1,'F','T','NX-12-1368','M','2013-12-01',19,'2014-01-06',182000,'2013-12-01',19,111127,0,0,0,0,'F',21,0,1611.65,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (103,'617798625','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-12-19','P. YEDUKONDALAMMA','P NO, 49, W.PART','PADMAVATHI NAGAR COLONY,VANAST','','','1',0.5,'F','T','306','M','2014-01-01',20,'2014-02-16',264000,'2014-01-01',20,0.2,0,0,0,0,'F',3,0,0,'2014-02-27',870,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (105,'617798951','06','0611','JUBILEE HILLS','8500','2012-12-20','MIR  HASNAINALIKHAN','PLOT NO.67','NANDIGIRI HILL / HUDA ENCLAVE','','','1',0.75,'F','T','12B3129','M','2014-01-01',2,'2014-02-17',137000,'2014-01-01',2,-9319.4,0,0,0,0,'F',3,0,0,'2013-12-09',8245,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (106,'617799267','15','0614','MADHAPUR','8500','2012-12-19','USHKE MAMTHA  AND OTHER','P.NO.25,SY.NO.47,48&49','RAIDURG PAIGA VILLAGE','','','1',0.5,'F','T','12B54326','L','2014-01-01',15,'2012-12-19',0,'2012-11-01',0,1883,8785,0,0,0,'F',4,0,0,'2014-01-20',5020,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (107,'617799809','07','0722','MARREDPALLY','8500','2012-12-25','M.S. MBNV CONSTRUCTIONS','10-3-88 PLOY NO.83/C','EAST MARREDPALLY','','','2',0.75,'F','T','12B3328','M','2014-01-01',37,'2014-02-18',776000,'2014-01-01',37,1.5,0,0,0,0,'F',9,0,0,'2014-02-26',1112,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (108,'617799888','06','0613','THATTIKHANA','8500','2012-12-18','MOHAMMED RASHEEDUDDIN','8-2-693 PLOTNO 78','BANJARA GREEN BANJARA HILLS RD','','500034','1',0.75,'F','T','NX-12-1814','M','2014-01-01',5,'2014-02-05',81000,'2014-01-01',5,1713,0,0,0,0,'F',0,0,0,'2014-01-24',3426,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (110,'617799932','06','0611','JUBILEE HILLS','8500','2012-12-13','BOLLA RAMA DEVI','8-3-23/B/317/1','KRISHNA NAGAR','','','1',0.5,'F','T','12-B-19573','M','2014-01-01',10,'2014-02-21',160000,'2014-01-01',10,6811.48,0,0,0,0,'F',0,0,101.78,'2013-08-28',1000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (111,'617799947','06','0631','YELLAREDDYGUDA','8500','2012-12-20','MOHANRAO,P.','8-3-671/1','J P NAGAR','','500073','2',0.75,'F','T','12-B-3283','M','2014-01-01',63,'2014-02-06',620000,'2014-01-01',63,2.5,0,0,0,0,'F',8,0,0,'2014-02-21',2930,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (112,'617800048','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-12-23','KOLLIMARLA RAVINDRANATH','SY.NO:57 PLOT:35','FCI COLONY PHSE-I','','','1',0.5,'F','T','12B-59052','M','2014-01-01',15,'2014-02-18',149000,'2014-01-01',15,1467,0,0,0,0,'F',2,0,22.01,'2013-12-21',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (113,'617800111','10','0241','SAROORNAGAR','8500','2012-12-24','SMT. D. MANJULA  WIFE OF D.V. RAJESHWAR','PLOT NO.3, VENKATESHWARA','ROAD NO:18, SAROORNAGAR, HYDER','','','1',0.5,'F','T','12B-5112221','L','2014-01-01',15,'2013-08-13',100000,'2013-07-01',15,3859.26,3765,0,0,0,'F',3,0,56.48,'2013-09-25',5114,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (114,'617800196','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-12-23','G.GOPAL','P NO.121,PH-II','F C I, COLONY,VANASTHALIPURAM','','500070','1',0.75,'F','T','12B-3123','M','2014-01-01',33,'2014-02-17',301000,'2014-01-01',33,1713.6,0,0,0,0,'F',2,0,0,'2014-01-28',1713,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (115,'617800239','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-11-04','R. SESHA RAM SINGH','PLOT NO, 23, E.PART','SRIVEERANJANEYA COLONY','','500070','1',0.5,'F','T','12B-39623','M','2014-01-01',25,'2014-02-07',283000,'2014-01-01',25,3301.96,0,0,0,0,'F',2,0,46.82,'2013-11-06',6903,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (116,'617800244','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-12-17','H.VIJAY KUMAR','PLOT NO 52','RAJIVSHETY NAGAR COLONY KARMAN','','','1',0.5,'F','T','12b13345','M','2013-12-01',20,'2014-01-21',28000,'2013-12-01',20,11702.8,0,0,0,0,'F',5,0,173.63,'2013-12-13',20500,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (117,'617800258','10','0243','AUTONAGAR','8500','2012-11-07','A.RAJA RAO','PLOT NO 8','PADMAVATHI COLONY , HAYATHNAGA','','','1',0.5,'F','T','12B-39724','U','2014-01-01',15,'2012-11-07',0,'2012-10-01',0,627.5,0,0,0,0,'F',0,0,0,'2014-01-27',8785,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (118,'617800269','10','0241','SAROORNAGAR','8500','2012-11-12','ACHI PANDU RANGA CHARY','PLOT.NO.27','ROAD.NO.14.VENKATESWARA COLONY','','','2',0.75,'F','T','12B2144','M','2014-01-01',33,'2014-02-11',498000,'2014-01-01',33,30606.2,0,0,0,0,'F',8,0,435.6,'2013-10-31',15000,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (119,'617800278','10','0243','AUTONAGAR','8500','2012-12-17','P ANJANEYULU','PLOT NO .55','RAGHAVENDRANAGAR HAYATHNAGAR','','','1',0.75,'F','T','NX-12-2343','M','2013-12-01',19,'2014-01-21',199000,'2013-12-01',19,-2.3,0,0,0,0,'F',0,0,0,'2014-02-01',18840,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (120,'617800734','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-12-21','A.GOWRI','PLOT.NO.94','SREE SRINIVASAPURAM COLONY','','500070','1',0.75,'F','T','NX-12-2301','U','2014-01-01',29,'2013-04-26',70000,'2013-03-01',15,24828.5,0,0,0,0,'F',0,0,359.71,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (121,'617800842','10','1021','SAHEBNAGAR (DIV 10)','8500','2012-12-24','DANAM SWAROOPA RANI','PLOT NO. 127, ANUPAMA NAG','HASTINAPURAM','','','1',0.5,'F','T','12B-53207','L','2013-12-01',15,'2012-12-24',0,'2012-11-01',0,23.5,8157.5,0,0,0,'F',1,0,0,'2014-02-05',600,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (122,'617800947','14','1421','HUBSIGUDA','8500','2012-12-23','K. SAMBASHIVA RAO  K. GOPALA RAO','1-5-26/G1,','V.V. NAGAR ST. NO.8','','','2',0.75,'F','T','12B76832','M','2014-01-01',69,'2014-02-13',1.08e+006,'2014-01-01',69,0,0,0,0,0,'F',8,0,0,'2014-02-19',2936,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (123,'617800976','14','1423','RAMANTHAPUR(DIV 14)','8500','2012-12-20','S.SHAKUNTHALA','3-12-38','GANESHNAGAR','','','1',0.5,'F','T','12B-78612','M','2013-06-01',6,'2013-07-27',75000,'2013-06-01',6,-0.5,0,0,0,0,'F',4,0,0,'2013-08-06',1253,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (124,'617801170','03','0311','TOLI CHOWK','8500','2012-11-19','SHAMEEM JAHAN','8-1-423/A/260','DIAMOND HILL,SHAIKPET,HYDERABA','','','1',0.5,'F','T','12B53334','M','2014-01-01',11,'2014-02-20',202000,'2014-01-01',11,9745.02,0,0,0,0,'F',3,0,142.65,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (125,'617801185','03','0311','TOLI CHOWK','8500','2012-11-19','MEHER UNNISSA BEGUM','8-1-423/A/194','DIAMOND HILLS,SHAIKPET,HYDERAB','','','1',0.5,'F','T','12B53314','U','2014-01-01',15,'2012-11-19',0,'2012-10-01',0,9883.14,0,0,0,0,'F',3,0,141.19,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (126,'617801190','03','0311','TOLI CHOWK','8500','2012-11-19','FARHATH FATHIMA','8-1-423/A/240','DIAMOND HILLS,SHAIKPET HYDERAB','','','1',0.5,'F','T','12B40032','M','2014-01-01',3,'2014-02-20',211000,'2014-01-01',3,1255.5,0,0,0,0,'F',2,0,0,'2014-01-07',1882,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (127,'617801293','03','0311','TOLI CHOWK','8500','2012-12-24','MOHD FAREED UDDIN AHMED','9-4-131/1/N/111','NEERAJA COLONY','','','2',0.5,'F','T','13g38335','M','2013-12-01',12,'2014-01-23',32000,'2013-12-01',12,-0.6,0,0,0,0,'F',8,0,0,'2014-02-15',2937,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (128,'617801877','09','0915','KPHB','8500','2012-11-15','K.HANUMANTHA RAO','PLOT NO 144','NRSA COLONY HYDERNAGAR KUKATPA','','','1',0.5,'F','T','7B1678','M','2014-01-01',55,'2014-02-15',440000,'2014-01-01',55,13623.3,0,0,0,0,'F',2,0,193.36,'2014-02-08',9000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (129,'617802177','09','0915','KPHB','8500','2012-12-28','SMT KAMALA DEVI AND OTHERS','PLOT NO 44MIG,SY.NO.1058','DHARMA REDDY NAGAR PHASE-1,KUK','','','2',0.75,'F','T','12-153975','M','2014-01-01',15,'2014-02-15',45000,'2014-01-01',15,26224.5,0,0,0,0,'F',5,0,386.93,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (130,'617802184','09','0911','MOOSAPET','8500','2012-11-19','MANDAVALLI VENKATA RAMA LAKSHMI','PLOT NO.52','R.K. SOCIETY, BORABANDA','','','1',0.5,'F','T','12b54294','U','2014-01-01',15,'2012-11-19',0,'2012-10-01',0,0.5,0,0,0,0,'F',4,0,0,'2014-02-10',627,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (131,'617802230','09','0915','KPHB','8500','2012-11-22','E.SOMESWARA RAO','PLOT NO 108','SPACE EMPLOYEES H.W.A.(NRSA),H','','','1',0.75,'F','T','NX-12-1249','M','2014-01-01',5,'2014-02-22',167000,'2014-01-01',5,26258.8,0,0,0,0,'F',2,0,385.4,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (132,'617802461','09','0915','KPHB','8500','2012-12-28','G.GOPIKA AND OTHERS','PLOT NO.31&32, SY NO.1009','PHASE-9,KPHB COLONY','','','2',0.75,'F','T','NX-12-2610','M','2014-01-01',90,'2014-02-19',852000,'2014-01-01',90,0,0,0,0,0,'F',8,0,0,'2014-02-20',1235,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (133,'617802497','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-11-18','R .V .V .V . RATNAKAR','PLOT NO .73','SREE  SRINIVASA COLONY  VANAST','','','1',0.5,'F','T','12B49930','U','2014-01-01',15,'2013-04-26',90000,'2013-03-01',15,-0.49,0,0,0,0,'F',4,0,0,'2014-02-18',10534,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (134,'617802505','10','1021','SAHEBNAGAR (DIV 10)','8500','2012-11-25','SMT. V. SUJATHA','PLOT NO.25, SOUTH PART, S','HASTHINAPURAM, SAHEBNAGAR, HYD','','','1',0.5,'F','T','12b54197','L','2013-12-01',17,'2013-12-13',35000,'2013-11-01',17,1145.8,724.7,0,0,0,'F',3,0,17.19,'2014-02-11',2000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (135,'617802510','10','1021','SAHEBNAGAR (DIV 10)','8500','2012-11-23','B.SESHARATNAM','PLOT NO.21','TEACHERS COLONY,KARMANGHAT','','','1',0.5,'F','T','11B25412','L','2014-01-01',15,'2014-01-09',210000,'2013-12-01',15,-0.5,627.5,0,0,0,'F',1,0,0,'2014-02-20',628,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (136,'617802525','10','1021','SAHEBNAGAR (DIV 10)','8500','2012-11-23','S. VENKATESH. S. NAGESH','P.NO. 74 (S & N. PART), R','OMKAR NAGAR, BAIRAMALGUDA, N.','','','1',0.5,'F','T','12B540194','U','2014-01-01',16,'2012-11-23',0,'2012-10-01',0,673.3,0,0,0,0,'F',3,0,0,'2014-01-07',9230,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (137,'617802561','10','0244','ALKAPURI','8500','2012-11-09','SMT. KARI RAMA  DAUGHTER OF SRI A. KESHAV RAO','PLOT NO.41 B, ROAD NO.3','NEW NAGOLE, ALKAPURI, HYDERABA','','','1',0.5,'F','T','0253231','M','2014-01-01',15,'2014-02-06',556000,'2014-01-01',15,-0.5,0,0,0,0,'F',2,0,0,'2014-02-12',213,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (138,'617802575','10','1031','MARUTHINAGAR (DIV 10)','8500','2012-11-17','KALAPALABABURAO','PLOT NO.13,24/P','ROAD NO.3 RATNANAGAR, SRI SRI','','','1',0.75,'F','T','88484882','M','2014-01-01',9,'2014-02-21',214000,'2014-01-01',9,3425.31,0,0,0,0,'F',3,0,0,'2013-12-26',2193,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (139,'617802580','10','1031','MARUTHINAGAR (DIV 10)','8500','2012-11-04','S.NAGA JYOTHI','H.NO;-1-1-264/203,  ROAD','BALAJI NAGAR, MOHAN NAGAR','','','2',0.75,'F','T','NX-12-1797','M','2013-04-01',45,'2013-05-16',271000,'2013-04-01',45,0,0,0,0,0,'F',15,0,0,'2013-06-05',10975,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (141,'617802913','09','0911','MOOSAPET','8500','2014-02-25','MOHAMMED KHAJA PASHA','H.NO.12-6-36/9-F','SHIVA SHAKTINAGAR KUKATPALLY V','','','1',0.5,'F','T','12b41258','L','2014-01-01',15,'2013-02-06',0,'2013-01-01',0,-1044,0,0,0,0,'F',0,0,0,'2014-02-22',2044,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (142,'617802928','09','0911','MOOSAPET','8500','2012-12-20','M.DURGA RAO','15-21-149/3/A','BALAJI NAGAR, KUKATPALLY','','','2',0.75,'F','T','nx-13-1493','M','2014-01-01',17,'2014-02-19',124000,'2014-01-01',17,5350,0,0,0,0,'F',15,0,0,'2014-02-08',5400,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (144,'617803263','07','0714','SRINIVAS NAGAR','8500','2012-12-31','VELSOJU BHARATHI','11-3-267/19,PLOT NO.19','MADHURA NAGAR,ZAMISTANPUR,SECU','','','1',0.5,'F','T','12B40869','M','2012-11-01',15,'2012-12-31',0,'2012-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (145,'617803412','02','0213','MOOSARAMBAGH','8500','2012-11-19','C.RAMA DEVI','16-11-469/B','MOSARAM BAGH','','','1',0.75,'F','T','7878877','M','2014-01-01',8,'2014-02-05',286000,'2014-01-01',8,56899.1,0,0,0,0,'F',6,0,824.63,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (146,'617803425','02','0222','ASMANGARH','8500','2012-11-07','KAMISHETTYRAJENDRA PRASAD  AND OTHERS','H.NO.16-2-24/298/LIG/298/','SAIDABAD','','500039','2',0.75,'F','T','NX-12-1552','M','2014-01-01',50,'2014-02-18',750000,'2014-01-01',50,44040,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (147,'617803586','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-01-01','SMT G.LAKSHMI','PLOT N O.377','RAGHAVENDRA NAGAR,JILLELAGUDA','','','1',0.75,'F','T','13j453657','M','2014-01-01',8,'2014-02-24',495000,'2014-01-01',8,3424.7,0,0,0,0,'F',1,0,0,'2014-01-18',5140,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (148,'617803591','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-01-01','C.SUDERSHANAM','PLOT NO 122','APSEB COLONY HASTHINAPURAM','','','1',0.5,'F','T','12A41799','M','2014-01-01',18,'2014-02-09',190000,'2014-01-01',18,0.5,0,0,0,0,'F',1,0,0,'2014-02-09',260,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (149,'617804255','06','0611','JUBILEE HILLS','8500','2012-12-29','SRI.M.P.TEJ BABU','8-2-293/82/A/902-B/1','ROAD NO.46','','','1',0.5,'F','T','12b6782','M','2014-01-01',8,'2014-02-19',404000,'2014-01-01',8,5761.15,0,0,0,0,'F',1,0,86.42,'2013-09-04',20775,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (150,'617804494','10','0241','SAROORNAGAR','8500','2012-12-25','SMT B.SHAKUNTALA','10-5-7/A','KAMESHWAR COLONY,LINGOJIGUDA','','','1',0.5,'F','T','10b18e6','M','2014-01-01',14,'2014-02-19',36000,'2014-01-01',14,4628.74,0,0,0,0,'F',4,0,68.87,'2013-08-16',3086,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (151,'617805009','10','0244','ALKAPURI','8500','2012-12-24','S.UMA','SURVY NO 9/1/F','ALKAPURI COLONY R NO 10','','','1',0.75,'F','T','11118035','M','2014-01-01',8,'2014-02-05',527000,'2014-01-01',8,-2.3,0,0,0,0,'F',2,0,0,'2014-02-23',1715,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (152,'617805102','10','0244','ALKAPURI','8500','2012-12-18','ISUKAPALLI VENKATA LAKSHMI NARASIMHA PRASAD','PLOT NO.179','ALKAPURI COLONY','','','1',0.5,'F','T','12b.7062','M','2014-01-01',14,'2014-02-17',155000,'2014-01-01',14,624.8,0,0,0,0,'F',3,0,0,'2014-01-29',630,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (153,'617805111','10','1041','VANASTHALIPURAM (DIV 10)','8500','2012-12-20','A.RAJU','PLOT.NO 367','VAIDEHI NAGAR','','500070','1',0.5,'F','T','12b12710','L','2013-06-01',15,'2012-12-20',0,'2012-11-01',0,-0.5,29907.5,0,0,0,'F',7,0,0,'2013-11-30',29908,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (154,'617805165','10','0243','AUTONAGAR','8500','2012-12-25','N. ANJANEYULU','PLOT NO. 15','LECTURES COLONY','','','1',0.5,'F','T','12B.45315','M','2014-01-01',14,'2014-02-16',213000,'2014-01-01',14,605,0,0,0,0,'F',0,0,0,'2014-01-29',650,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (156,'617805293','10','0243','AUTONAGAR','8500','2012-11-15','K.VENKATA SUBBA RAYUDU','PLOT.NO.195','BHAGYALATHA (BDL) COLONY','','','1',0.75,'F','T','2012B2000988','M','2013-10-01',11,'2013-11-21',135000,'2013-10-01',11,10554.8,0,0,0,0,'F',4,0,158.32,'2013-11-28',10000,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (157,'617805305','09','0917','BHAGYANAGAR','8500','2012-11-24','K. NARENDAR REDDY','2-22-313/B, PLOT NO-169 C','ADDAGUTTA CO-OPERATIVE SOCIETY','','','2',0.75,'F','T','01674-12','M','2014-01-01',72,'2014-02-17',1.077e+006,'2014-01-01',72,0.53,0,0,0,0,'F',15,0,0,'2014-02-19',5485,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (158,'617805310','09','0917','BHAGYANAGAR','8500','2012-11-24','K.MANIKYALA RAO & OTHERS','PLOT NO 61 PART & 62 PART','SAMATHA NAGAR OPP TO JNTU KUKA','','','2',0.75,'F','T','nx12-2502','M','2014-01-01',61,'2014-02-15',768000,'2014-01-01',61,2936,0,0,0,0,'F',8,0,0,'2014-02-13',81,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (159,'617805475','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-01-01','S.RAJESHWARA RAO','17-1-391/S/329','SINGARENI COLONY','','','1',0.5,'F','T','12B8026','U','2014-01-01',15,'2013-01-01',0,'2012-12-01',0,1255,0,0,0,0,'F',0,0,0,'2013-12-15',7081.33,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (160,'617805541','15','0614','MADHAPUR','8500','2012-12-20','RAJ REDDYBADDAM','PLOT NO 20','SILICON VALLEY,NEAR IMAGE GARD','','500081','1',0.75,'F','T','154077-12','M','2014-01-01',8,'2014-02-19',264000,'2014-01-01',8,22053,0,0,0,0,'F',7,0,312.23,'2014-02-21',10000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (161,'617805581','15','0614','MADHAPUR','8500','2012-12-28','G.SUDHAKAR','1-60/111','ANJAIAH NAGAR','','','1',0.5,'F','T','12B62032','L','2013-02-01',15,'2012-12-28',0,'2012-11-01',0,-0.5,1882.5,0,0,0,'F',4,0,0,'2013-05-08',1883,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (162,'617806285','10','0261','L.B.NAGAR','8500','2012-12-29','K.ANANTHA REDDY','PLOT NO.55','SAI NAGAR,NAGOLE,ROAD NO.11','','','1',0.5,'F','T','12B62123','M','2014-01-01',21,'2014-02-17',196000,'2014-01-01',21,4158.27,0,0,0,0,'F',0,0,61.66,'2013-10-09',8352,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (163,'617806318','10','1021','SAHEBNAGAR (DIV 10)','8500','2012-12-18','T.SHILPA','PLOT NO-70, DWARAKA TIRUM','HASTHINAPURAM','','','1',0.5,'F','T','12B.62325','M','2013-12-01',15,'2014-01-26',151000,'2013-12-01',15,4488.05,0,0,0,0,'F',3,0,63.09,'2013-10-07',4000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (164,'617806337','10','0243','AUTONAGAR','8500','2013-01-02','R.V.RAMANA RAO','PLOT NO 27','KAMALA NAGAR COLONY','','','1',0.5,'F','T','12B 59035','L','2014-01-01',15,'2013-01-02',0,'2012-12-01',0,-2.5,8157.5,0,0,0,'F',0,0,0,'2014-02-21',630,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (166,'617806625','03','0311','TOLI CHOWK','8500','2012-12-24','MRS.SHAHEEN KHANAM','8-1-423/261','DIAMOND HILLS,SHAIKPET,TOLICHO','','','1',0.5,'F','T','12B57408','U','2014-01-01',15,'2012-12-24',0,'2012-11-01',0,1982.96,0,0,0,0,'F',1,0,26.78,'2014-02-06',2000,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (167,'617806941','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-01-03','S.AMRUTHA','PLOT.NO.7,H.NO:8-6-76/A/1','N.S.ROAD','','','1',0.5,'F','T','12B-62810','L','2014-01-01',17,'2013-01-03',0,'2012-12-01',0,0.6,8837.9,0,0,0,'F',3,0,0,'2014-02-15',5194,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (168,'617807247','14','1423','RAMANTHAPUR(DIV 14)','8500','2012-11-18','N.VENKATA PRASAD','3-10-25/1','GOKHALE NAGAR','','','1',0.5,'F','T','12B.70812','M','2013-06-01',33,'2013-07-27',172000,'2013-06-01',33,9902.64,0,0,0,0,'F',4,0,148.16,'2013-01-17',213,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (169,'617807884','10','0241','SAROORNAGAR','8500','2013-01-01','B.BASKAR RAO','PLOT NO.17','SAIRAM NAGAR COLONY,BAHADURGUD','','','1',0.5,'F','T','12B-62033','M','2014-01-01',14,'2014-02-19',192000,'2014-01-01',14,8534,0,0,0,0,'F',4,0,122.36,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (170,'617808245','03','0311','TOLI CHOWK','8500','2012-12-21','MRS.AMTUL AYESHA','8-1-423/A/152','DIAMOND HILLS','','','1',0.5,'F','T','12-B-40036','U','2014-01-01',15,'2012-12-21',0,'2012-11-01',0,-2.04,0,0,0,0,'F',1,0,0,'2014-02-14',630,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (171,'617808285','03','0311','TOLI CHOWK','8500','2012-12-29','MRS.FARHATH MUMTHAZ','HNO.8-1-423/A/294','DIAMOND HILLS TOLICHOWKI','','','1',0.5,'F','T','12B-54332','U','2014-01-01',15,'2012-12-29',0,'2012-11-01',0,0,0,0,0,0,'F',4,0,0,'2014-02-12',627.5,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (172,'617808313','03','0311','TOLI CHOWK','8500','2013-01-03','MIR HASEEB UDDIN','HNO.8-1-423/A/26&27','DIAMOND HILLS SHAIKPET','','','1',0.75,'F','T','21492-12','M','2014-01-01',22,'2014-02-18',355000,'2014-01-01',22,1716.7,0,0,0,0,'F',0,0,0,'2014-02-09',6115,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (173,'617808328','03','0311','TOLI CHOWK','8500','2013-01-03','MRS.NEHA KHAN','HNO.8-1-423/A/86','DIAMOND HILLS SHAIKPET','','','1',0.75,'F','T','75890','M','2014-01-01',63,'2014-02-18',480000,'2014-01-01',63,37496.1,0,0,0,0,'F',0,0,558.97,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (174,'617808365','10','1021','SAHEBNAGAR (DIV 10)','8500','2012-11-23','M.VEENA','PLOT NO 88 CHAITANYA NAGA','COLONY PHASE-III B.N.REDDY NAG','','','1',0.5,'F','T','12b-5350','L','2014-01-01',17,'2012-11-23',0,'2012-10-01',0,5352.8,10092.9,0,0,0,'F',4,0,76.39,'2013-12-04',5000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (175,'617808854','10','0243','AUTONAGAR','8500','2012-12-20','N  .BHARATHI','PLOT NO 1','SIDDI  VINAYAKA NAGAR NEAR MOT','','','1',0.5,'F','T','12b-57011','U','2014-01-01',15,'2012-12-20',0,'2012-11-01',0,9133.27,0,0,0,0,'F',0,0,131.78,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (176,'617808885','10','0241','SAROORNAGAR','8500','2013-01-06','A.SUDHA MADAVI','PLOT NO.43','DHARMAPURI COLONY,SAROORNAGAR','','','1',0.5,'F','T','12B-57106','R','2014-01-01',16,'0001-01-01',0,'0001-01-01',15,675.87,0,0,0,0,'F',4,0,0,'2014-01-28',7970,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (177,'617809377','10','0244','ALKAPURI','8500','2012-11-17','R.SREEKANTH','POT NO 7','RTC COLONY ,LBNAGAR','','','1',0.75,'F','T','12B1470','M','2014-01-01',30,'2014-02-18',320000,'2014-01-01',30,4479.14,0,0,0,0,'F',6,0,44.63,'2014-02-14',24000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (178,'617809434','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-01-09','L.DASARATHA REDDY','PLOT.NO.80','SRI RAMA AYODHA NAGAR COLONY','','','1',0.5,'F','T','12B 2563','M','2013-12-01',12,'2014-01-09',152000,'2013-12-01',12,-0.17,0,0,0,0,'F',3,0,0,'2014-01-15',1250,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (179,'617810011','05','0511','GANDHINAGAR','8500','2012-12-28','SRI.C.B.SHANKER ALIAS SHANKER B.CHAPA AND OTH','HNO.1-10-17','ASHOKNAGAR','','','2',0.75,'F','T','2336','M','2014-01-01',51,'2014-02-01',632000,'2014-01-01',51,5486.56,0,0,0,0,'F',15,0,0,'2014-02-03',5472,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (181,'617810963','10','0243','AUTONAGAR','8500','2012-12-27','CHENNU KOTESWARA RAO','PLOT NO.1/1','SUBHODAYA COLONY,VANASTHALIPUR','','','1',0.5,'F','T','12B-59063','M','2014-01-01',15,'2014-02-23',145000,'2014-01-01',15,3162.58,0,0,0,0,'F',0,0,47.02,'2013-09-20',2570,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (182,'617810993','07','0642','NALLAGUTTA','8500','2013-01-10','M.VENKATA LAXMI','1-3-134/3','KALASIGUDA','','500003','1',0.5,'F','T','12a24562','L','2014-01-01',15,'2013-01-10',0,'2012-12-01',0,6426.12,8157.5,0,0,0,'F',0,0,94.13,'2013-07-22',1882,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (183,'617811138','06','0611','JUBILEE HILLS','8500','2012-11-21','NEELAMVENKATARAMANAREDDY','PLOT NO 72','NANDAGIRI HILLS','','','1',0.75,'F','T','12.2362','M','2014-01-01',23,'2014-02-15',302000,'2014-01-01',23,-0.2,0,0,0,0,'F',1,0,0,'2014-02-17',579,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (184,'617811143','06','0611','JUBILEE HILLS','8500','2012-11-27','SRI N. NAGESHWARA RAO','PLOT NO.9','NANDAGIRI HILLS','','','1',0.75,'F','T','nx-12-10123','M','2014-01-01',7,'2014-02-17',800000,'2014-01-01',7,1713.18,0,0,0,0,'F',3,0,0,'2014-01-24',21005,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (185,'617811178','06','0611','JUBILEE HILLS','8500','2012-11-09','M.RAVINDER REDDY','8-2-293/82/A/832-A','RD NO.40','','','1',0.75,'F','T','12B1465','M','2014-01-01',6,'2014-02-19',312000,'2014-01-01',6,3391.6,0,0,0,0,'F',3,0,0,'2014-01-13',1836,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (186,'617811183','06','0611','JUBILEE HILLS','8500','2012-12-01','M.RAMCHANDRA RAO','PLOT NO 23','ASHWINI LAYOUT','','','1',0.5,'F','T','12A33003','M','2014-01-01',77,'2014-02-13',777000,'2014-01-01',77,0.75,0,0,0,0,'F',1,0,0,'2014-02-13',2043,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (187,'617811830','09','0917','BHAGYANAGAR','8500','2013-01-09','DR.M.NEETHA','PLOT NO-11/1, SY.NO-92 TO','SAPTHAGIRI COLONY, BAGH AMEERI','','','1',0.75,'F','T','XL-10-61984','M','2014-01-01',30,'2014-02-11',197000,'2014-01-01',30,1713.7,0,0,0,0,'F',4,0,0,'2014-02-13',3422,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (188,'617811970','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-01-10','G.SHIVALEELA','PLOT.NO.436 PART','SREE SRINIVASAPURAM COLONY','','500070','1',0.5,'F','T','12B2163','U','2014-01-01',15,'2013-04-26',45000,'2013-03-01',15,-0.5,0,0,0,0,'F',3,0,0,'2014-02-09',628,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (189,'617812015','06','0623','ERRAGADDA','8500','2012-11-18','B.VENKATESULU REDDY  OTHERS','PLOT NO.76','KALYAN NAGAR VENTURE-I','','500018','2',0.75,'F','T','12b3019','M','2014-01-01',19,'2014-02-03',329000,'2014-01-01',19,0,0,0,0,0,'F',8,0,0,'2014-02-08',992,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (190,'617812020','06','0623','ERRAGADDA','8500','2012-11-17','SRI.V CHALAPATHI RAO','PLOT NO.1','SRI RAM NAGAR,BORABANDA','','','2',0.75,'F','T','12-b-3011','M','2014-01-01',106,'2014-02-12',906000,'2014-01-01',106,4315,0,0,0,0,'F',8,0,0,'2014-01-22',8180,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (191,'617812034','02','0211','MALAKPET','8500','2012-11-25','BATOOL SULTANA','16-10-185/2/A','OLD MALAKPET','','','1',0.5,'F','T','033401','M','2014-01-01',5,'2014-02-18',60000,'2014-01-01',5,3490.16,0,0,0,0,'F',0,0,51.19,'2014-02-11',1000,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (192,'617812250','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-01-10','VEMANARAYANAPACHALLA','PLOT NO 181','T V COLONY','','','1',0.5,'F','T','12-63637','M','2014-01-01',14,'2014-02-16',150000,'2014-01-01',14,-22.5,0,0,0,0,'F',0,0,0,'2014-01-17',630,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (193,'617812265','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-01-10','C.V.RAMANA SHARMA','PLOT NO.323','SRI SRINIVASAPURAM COLONY','','','1',0.5,'F','T','13b32367','M','2013-11-01',12,'2013-12-11',52000,'2013-11-01',12,5647.5,0,0,0,0,'F',1,0,84.71,'2013-07-06',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (194,'617812337','15','1513','GACHIBOWLI (DIV 15)','8500','2012-12-19','R.VENKATA NAGA BHARAT','P.NO.61,SY.NO.69&70','TELECOM NAGAR,GACHIBOWLI','','','1',0.75,'F','T','12b3109','M','2013-07-01',42,'2013-08-17',340000,'2013-07-01',42,0,0,0,0,0,'F',3,0,0,'2013-08-31',19762,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (195,'617812377','02','0213','MOOSARAMBAGH','8500','2013-01-10','MANJULA PANTHAGANI','16-11-511/D/233 & 234','SHALIVANA  NAGAR','','','2',0.75,'F','T','11-b-1177','M','2014-01-01',133,'2014-02-03',1.318e+006,'2014-01-01',133,21780,0,0,0,0,'F',8,0,287.73,'2014-02-18',10000,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (196,'617812755','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-01-11','K.KALYAN RAJU','PLOT NO 7.','VENKAT RAMANA COLONY','','','1',0.5,'F','T','12B 5926','U','2014-01-01',15,'2013-04-26',45000,'2013-03-01',15,0,0,0,0,0,'F',0,0,0,'2014-02-17',627.5,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (198,'617813784','03','0311','TOLI CHOWK','8500','2013-01-17','NUSRATH FATIMA','8-1-423/A/157','DIAMOND HILLS,SHAIKPET,TOLICHO','','','1',0.5,'F','T','12b-53275','U','2014-01-01',15,'2013-01-17',0,'2012-12-01',0,8515.19,0,0,0,0,'F',2,0,122.36,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (199,'617814056','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-01-13','P.MURALIDHAR REDDY','PLOT NO : 66','VENKATESWARA COLONY,HASTHINAPU','','','1',0.5,'F','T','12-B-59620','L','2014-01-01',17,'2013-01-13',0,'2012-12-01',0,9161.65,8837.9,0,0,0,'F',1,0,132.57,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (200,'617814061','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-01-18','SMT. K. SARITHA','PLOT NO.48, AIR COLONY, C','SAHEBNAGAR, R.R.DIST','','','1',0.5,'F','T','783','L','2013-10-01',16,'2013-01-18',0,'2012-12-01',0,0,6469.4,0,0,0,'F',2,0,0,'2013-12-18',2704.4,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (201,'617814463','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-01-11','K. VASUDEV','P NO . 51','S K D NAGAR, VANASTHALIPURAM','','','1',0.5,'F','T','12B.59314','U','2014-01-01',15,'2013-01-11',0,'2012-12-01',0,3336.95,0,0,0,0,'F',1,0,47.36,'2013-12-26',5000,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (202,'617814762','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-01-12','SAMA LAXMI','PLOT NO.136','VENKATARAMANA COLONY','','500070','1',0.5,'F','T','12-B-62195','U','2014-01-01',15,'2013-07-16',90000,'2013-06-01',15,8515.19,0,0,0,0,'F',3,0,122.36,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (203,'617814846','09','0911','MOOSAPET','8500','2013-01-18','KAMADHENU MODERN RESIDENCY','12-5-65','S.P.NAGAR,MOOSAPET,HYDERABAD','','','2',0.75,'F','T','nx-12-2130','M','2014-01-01',58,'2014-02-22',748000,'2014-01-01',58,-0.5,0,0,0,0,'F',13,0,0,'2014-02-26',4755,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (205,'617815424','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-01-16','V. SUDHAKAR RAO','PLOT NO. 90','VEERANJANEYA COLONY','','','1',0.5,'F','T','12B-59142','L','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,8157.5,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (206,'617815934','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-01-20','A KRISHNA REDDY','PLOT NO-153','ABHYUDAYA NAGAR COLONY,SAHEBNA','','500074','1',0.5,'F','T','12B-65601','U','2014-01-01',17,'2013-01-20',0,'2012-12-01',0,9183.39,0,0,0,0,'F',3,0,132.57,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (208,'617816058','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-01-16','NARSIMHA REDDYKOTHA','546','OPP ALLAHABAD BANK','','','1',0.5,'F','T','12B62115','U','2014-01-01',15,'2013-01-16',0,'2012-12-01',0,1255,0,0,0,0,'F',4,0,0,'2013-12-11',3137.5,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (209,'617816190','06','0612','BANJARA HILLS','8500','2013-01-22','A. KUSAMA KUMARI','6-3-596/77/5/B','NAVEENNAGAR, KHIARTABAD','','','1',0.5,'F','T','12B14361','M','2014-01-01',21,'2014-02-01',424000,'2014-01-01',21,-0.6,0,0,0,0,'F',0,0,0,'2014-02-19',920,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (210,'617816407','06','0611','JUBILEE HILLS','8500','2013-01-20','N.MADHAVI','8-2-293/82/A/572','ROAD NO 32','','','1',0.75,'F','T','na','M','2014-01-01',3,'2014-02-14',59000,'2014-01-01',3,470.9,0,0,0,0,'F',2,0,0,'2014-02-14',1242,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (211,'617816412','06','0611','JUBILEE HILLS','8500','2013-01-19','ANIL KUMAR AGARWAL','8-2-293/82/A/740','ROAD NO.37','','500033','1',0.75,'F','T','12B2042','M','2014-01-01',1,'2014-02-19',99000,'2014-01-01',1,13842.7,0,0,0,0,'F',3,0,207.64,'2013-12-17',2000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (213,'617816452','06','0611','JUBILEE HILLS','8500','2013-01-10','AMARJIT SINGH','8-2-293/82/A/520/1','ROAD NO 28','','','1',0.75,'F','T','NX-12-2671','M','2013-12-01',10,'2014-01-07',253000,'2013-12-01',10,-0.5,0,0,0,0,'F',3,0,0,'2014-02-20',17310,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (214,'617817107','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-01-21','K.PADMAJA','PLOT NO 87','VIJAYAPURI PH 1','','','1',0.5,'F','T','10b1863627','M','2013-12-01',14,'2014-01-21',18000,'2013-12-01',14,0,0,0,0,0,'F',0,0,0,'2014-02-07',3138,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (215,'617817146','10','0243','AUTONAGAR','8500','2013-01-22','S .SARASWATI','5-4-1683  PLOT NO . 10','SUSHMA SAI NAGAR  VANASTHALIPU','','','1',0.5,'F','T','12b47512','M','2014-01-01',15,'2014-02-23',70000,'2014-01-01',15,628.15,0,0,0,0,'F',0,0,0,'2014-02-23',623,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (216,'617817226','10','0244','ALKAPURI','8500','2013-01-18','CH .VENKANNA','PLOT NO.151','VASAVI COLONY ALKAPURI','','','1',0.5,'F','T','12b13954','M','2014-01-01',14,'2014-02-20',153000,'2014-01-01',14,560.1,0,0,0,0,'F',0,0,0,'2014-02-06',2100,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (217,'617817454','15','0614','MADHAPUR','8500','2013-01-20','KAVITHA','PLOT.NO.1464','SIDDIQUE NAGAR','','','1',0.5,'F','T','12B59167','L','2014-01-01',15,'2013-01-20',0,'2012-12-01',0,3182.5,8157.5,0,0,0,'F',4,0,0,'2013-09-28',620,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (218,'617817852','09','0915','KPHB','8500','2013-01-23','SMT.SAGI SRILAKSHMI','PLOT NO.325','SARDAR PATEL NAGAR, KPHB','','','1',0.5,'F','T','12A.1347','M','2014-01-01',12,'2014-02-15',128000,'2014-01-01',12,3750.32,0,0,0,0,'F',1,0,54.86,'2014-01-16',2000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (219,'617817916','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-01-28','M.SRINIVAS REDDY','PLOT NO 3','DURGA NAGAR COLONY KHARMANGHAT','','','1',0.5,'F','T','12B48562','L','2014-01-01',21,'2013-01-28',0,'2012-12-01',0,34179.5,55542.5,0,0,0,'F',4,0,0,'2013-07-08',21363,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (220,'617817921','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-01-28','POTLURI BHANU PRASAD','PLOT NO.21','SHAKTHI NAGAR,KARMANGHAT','','','1',0.5,'F','T','12B4322','R','2014-01-01',16,'0001-01-01',0,'0001-01-01',0,-0.9,0,0,0,0,'F',4,0,0,'2014-02-24',4050,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (221,'617817946','10','1031','MARUTHINAGAR (DIV 10)','8500','2013-01-27','CH. RAMESH','PLOT NO 48','ROAD NO 5, NEW MARUTHINAGAR','','','1',0.75,'F','T','124587','M','2014-01-01',15,'2014-02-06',198000,'2014-01-01',15,-0.3,0,0,0,0,'F',2,0,0,'2014-02-06',1373,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (222,'617818256','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-01-20','A SIRISHA SANTHOSHISIRISHASANTHOSHI','PLOT NO 211','FCI COLONY PHASE -II','','','1',0.75,'F','T','12x2546','M','2014-01-01',27,'2014-02-11',352000,'2014-01-01',27,12.7,0,0,0,0,'F',3,0,0,'2014-02-20',3000,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (223,'617818281','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-01-07','SRI B. SUVARNA REDDY','PLOT NO.107, NAGARJUNA CO','HASTINAPURAM, SAHEBNAGAR, R.R.','','','1',0.5,'F','T','12B.62018','L','2014-01-01',17,'2013-01-07',0,'2012-12-01',0,3875.33,8740.7,0,0,0,'F',4,0,56.11,'2013-12-05',5000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (224,'617818797','10','0244','ALKAPURI','8500','2013-01-26','SMT. MEKA VENKATA KATYAYANI  WIFE OF MEKA RAV','PLOT NO.86B, GREEN HILLS','ALKAPURI, L.B.NAGAR, HYDERABAD','','','1',0.5,'F','T','12-B-59334','L','2014-01-01',16,'2013-01-26',0,'2012-12-01',0,6590.46,8303.3,0,0,0,'F',1,0,95.9,'2013-10-11',1060,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (225,'617818805','10','0244','ALKAPURI','8500','2013-01-23','T.JAGADEESH KUMAR','PLOT NO 59/B','NEW NAGOLE COLONY','','','1',0.75,'F','T','12-B-3303','R','2014-01-01',32,'0001-01-01',0,'0001-01-01',20,-0.3,0,0,0,0,'F',2,0,0,'2014-02-15',1703,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (226,'617818953','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-01-25','JUKURI  SRINIVAS','1-5-577/4/3','CHETHANA HOUSING COLONY, JONNA','','500010','1',0.75,'F','T','NX-12-2008','M','2014-01-01',44,'2014-02-04',436000,'2014-01-01',44,0.6,0,0,0,0,'F',4,0,0,'2014-02-15',1545,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (227,'617819163','02','0213','MOOSARAMBAGH','8500','2012-11-23','V.S.BHASKARA REDDY','16-11-511/D/228','SHALIVAHANA NAGAR','','','1',0.5,'F','T','11B 9192','M','2014-01-01',29,'2014-02-03',338000,'2014-01-01',29,-1.8,0,0,0,0,'F',0,0,0,'2014-02-06',1300,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (228,'617819607','09','0917','BHAGYANAGAR','8500','2013-01-25','M.BABY SAROJINI','PLOT NO.165,SY.NO.180,197','BHAGYA NAGAR COLONY,PH-III,KUK','','','2',0.75,'F','T','dnc','U','2014-01-01',50,'2013-05-15',7000,'2013-04-01',6,7330,0,0,0,0,'F',10,0,0,'2013-12-28',7330,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (229,'617819624','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-01-28','DR. RAMAMANI PATNAIK','PLOT NO.750','VAIDEHINAGAR','','','1',0.5,'F','T','11B 61412','U','2014-01-01',15,'2013-04-26',45000,'2013-03-01',15,3275.5,0,0,0,0,'F',2,0,49.13,'2014-01-01',3000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (230,'617819990','06','0611','JUBILEE HILLS','8500','2013-01-19','D.SAMBASIVA RAO','8-2-293/82/JIII/95','ROAD NO 72','','','1',0.5,'F','T','12b59019','M','2014-01-01',12,'2014-02-07',339000,'2014-01-01',12,-1.8,0,0,0,0,'F',1,0,0,'2014-02-12',630,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (231,'617820008','06','0611','JUBILEE HILLS','8500','2013-01-26','SMT K.NEERAJA','8-2-293/82/NL/132','MLA\'S & MP\'S COLNY','','','1',0.75,'F','T','12x-2025','M','2014-01-01',57,'2014-02-17',702000,'2014-01-01',57,3903.85,0,0,0,0,'F',3,0,0,'2014-01-22',11745,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (233,'617820033','06','0611','JUBILEE HILLS','8500','2013-01-27','GODAVARTHI SUNIL KUMAR','8-2-293/82/A/320 PLOT NO.','ROAD NO.25 JUBILEE HILLS','','','1',0.5,'F','T','12B 13030','M','2014-01-01',33,'2014-02-15',244000,'2014-01-01',33,4673.4,0,0,0,0,'F',1,0,70.1,'2013-12-19',3598,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (234,'617820186','07','0722','MARREDPALLY','8500','2013-01-08','K.G.SRINIVASAN','10-3-32/10','EAST MARREDPALLY,SECUNDERABAD','','','2',0.75,'F','T','124NX 2129','M','2014-01-01',76,'2014-02-04',1.765e+006,'2014-01-01',76,-0.09,0,0,0,0,'F',10,0,0,'2014-02-12',3657,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (235,'617820766','13','1321','DEFENCE COLONY','8500','2012-12-01','SRI ELESHALA  KRISHNA','30-1610/96/1(PLOT.NO.96)','SURYA NAGAR','','','1',0.5,'F','T','06057658','L','2014-01-01',15,'2012-12-01',0,'2012-11-01',0,8897.95,8785,0,0,0,'F',0,0,131.78,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (236,'617821213','10','0261','L.B.NAGAR','8500','2013-02-01','M.SRIKANTH','PLOT NO.8','VIVEKANANDA NAGAR COLONY,MANSO','','','1',0.5,'F','T','12B 509654','R','2014-01-01',17,'0001-01-01',0,'0001-01-01',0,724.77,0,0,0,0,'F',0,0,10.87,'2014-01-28',7183,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (237,'617821283','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-01-10','K.PARVATESWARAIAH','PLOT.NO.487','B.N.REDDY NAGAR COLONY','','','1',0.5,'F','T','12B 50132','M','2013-12-01',14,'2014-01-22',37000,'2013-12-01',14,7530,0,0,0,0,'F',1,0,112.95,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (238,'617821421','07','0732','TARNAKA','8500','2013-01-24','P.MARIADAS','12-13-829/60','SHIRDI SAI NAGAR','','500007','1',0.75,'F','T','121010104','M','2014-01-01',29,'2014-02-10',361000,'2014-01-01',29,0,0,0,0,0,'F',5,0,0,'2014-02-14',3057,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (239,'617821523','07','0724','SEETHAPALMANDI','8500','2013-01-20','SRI.Y.VENKAT RAMANA AND SRINATH YELLANKI','HNO.11-4-422/1','KINDI BASTI SEETHAPALMANDI','','','1',0.5,'F','T','12880010','M','2014-01-01',15,'2014-02-19',195000,'2014-01-01',15,-2.5,0,0,0,0,'F',0,0,0,'2014-02-26',5160,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (240,'617821724','05','0512','DOMALGUDA','8500','2013-01-23','DR.M.USHA SURESH','HNO.1-2-607/27/13','OPP S B H COLONY LOWER TANK BU','','','1',0.5,'F','T','12NX2642','R','2014-01-01',23,'0001-01-01',0,'0001-01-01',23,8880.52,0,0,0,0,'F',3,0,126.51,'2014-01-26',2000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (241,'617821884','03','0311','TOLI CHOWK','8500','2013-01-23','MRS.YASEEM BANU ABDUL MAJEED','HNO.8-1-423/A/117&118','DAIMOND HILLS SHAIKPET','','','2',0.75,'F','T','12B21568','M','2012-12-01',50,'2013-01-23',0,'2012-12-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (242,'617821967','03','0311','TOLI CHOWK','8500','2013-02-01','MOHAMMED ILYAS ALI','8-1-423/A/271','DIAMOND HILLS','','','1',0.5,'F','T','12201121325','U','2014-01-01',36,'2013-02-01',0,'2013-01-01',0,45684.3,0,0,0,0,'F',6,0,659.7,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (243,'617822212','03','0311','TOLI CHOWK','8500','2013-01-23','ASADULLAH SAYEED','8-1-423/A/127','DIAMOND HILL, SHAIKPET','','','2',0.75,'F','T','21491-12','M','2014-01-01',5,'2014-02-21',253000,'2014-01-01',5,29556.7,0,0,0,0,'F',7,0,426.44,'2013-09-30',5000,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (244,'617822314','14','1421','HUBSIGUDA','8500','2013-01-28','P.SUNITHA','PLOT NO 7 & 7A','KAKATIYA NAGAR HABSIGUDA','','','1',0.75,'F','T','12B-2927','M','2014-01-01',3,'2014-02-13',96000,'2014-01-01',3,-0.3,0,0,0,0,'F',1,0,0,'2014-02-22',5139,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (245,'617822622','13','1321','DEFENCE COLONY','8500','2012-12-15','RADHA RANI MITRA','33-147','SHAKTHI NAGAR R.K.PURAM MALKAJ','','','1',0.5,'F','T','B-12112836','L','2013-04-01',15,'2012-12-15',0,'2012-11-01',0,-638.5,3137.5,0,0,0,'F',0,0,0,'2013-09-12',214,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (247,'617822820','06','0624','S.R.NAGAR','8500','2013-02-02','T.BHARTHI','7-1-621/236/A','S R NAGAR','','','2',0.75,'F','T','8b11613','M','2014-01-01',16,'2014-02-13',58000,'2014-01-01',16,-0.67,0,0,0,0,'F',10,0,0,'2014-02-24',3690,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (248,'617822835','06','0624','S.R.NAGAR','8500','2013-02-02','SMT.VADHULA SREEVALLI','HNO.7-1-396/2/10/1(21/A)','S.R.NAGAR','','','2',0.75,'F','T','13B 1080','M','2014-01-01',62,'2014-02-10',437000,'2014-01-01',62,3,0,0,0,0,'F',10,0,0,'2014-02-12',3657,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (250,'617823578','13','1321','DEFENCE COLONY','8500','2013-01-19','V M V SIVA PRASAD','29-1423/2/1','KAKATEEYA NAGAR','','','1',0.75,'F','T','NX-12-2149','L','2014-01-01',50,'2013-01-19',0,'2012-12-01',0,31168.3,40800.5,0,0,0,'F',1,0,462.01,'2014-01-31',10000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (251,'617823913','06','0611','JUBILEE HILLS','8500','2013-02-05','JUBILEE HILLS COUNTY','8-3-229/D/97','VENKATAGIRI','','','2',0.75,'F','T','NX-12-2121','M','2014-01-01',17,'2014-02-12',237000,'2014-01-01',17,2936,0,0,0,0,'F',8,0,0,'2014-02-08',2934,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (252,'617823933','06','0611','JUBILEE HILLS','8500','2013-02-04','B.RAMA RAJU','8-2-293/82/A/213,213/A,21','ROAD NO.14 JUBILEE HILLS','','','1',0.5,'F','T','NX12-2685','M','2014-01-01',15,'2014-02-18',170000,'2014-01-01',15,625.4,0,0,0,0,'F',1,0,0,'2014-02-14',630,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (254,'617824146','16','1611','HYDERGUDA','8500','2013-01-10','D.RAMAKRISHNAIAH','PLOT NO 143','GOLDEN HEIGHT\'S COLONY','','','1',0.75,'F','T','nx-12-2336','M','2014-01-01',2,'2014-02-04',76000,'2014-01-01',2,-0.5,0,0,0,0,'F',0,0,0,'2014-02-12',580,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (255,'617824254','15','0614','MADHAPUR','8500','2013-02-01','SUNKARI NITHYANAND','P.NO.116','SUDHARSAN NAGAR COLONY','','','1',0.5,'F','T','13B 2133','L','2014-01-01',14,'2013-10-16',25000,'2013-09-01',3,0,2510,0,0,0,'F',1,0,0,'2014-02-26',3611.19,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (256,'617824269','15','0614','MADHAPUR','8500','2013-02-01','D SRI RAMA CHARY','1-57/221','SRI RAMNAGAR COLONY,KONDAPUR','','','1',0.5,'F','T','12A52415','L','2013-10-01',15,'2013-02-01',0,'2013-01-01',0,-0.09,5647.5,0,0,0,'F',1,0,0,'2014-01-31',5657,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (257,'617824421','10','0243','AUTONAGAR','8500','2013-01-22','G .CHAKRADHAR','PLOT NO .58 ROAD NO 11','DWARAKAMAI NAGAR COLONY VANAST','','','1',0.5,'F','T','60681','L','2014-01-01',14,'2013-12-17',30000,'2013-11-01',2,0.74,1255,0,0,0,'F',0,0,0,'2014-02-25',1270,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (258,'617825189','09','0913','HASMATHPET','8500','2013-02-05','SMT.B.MAHITHA','8-7-201/26,P.NO26','SAMATHA NAGAR,OLDBOWENPALLY','','','1',0.5,'F','T','12-7-8916','M','2014-01-01',17,'2014-02-21',295000,'2014-01-01',17,7740.16,0,0,0,0,'F',4,0,114.41,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (259,'617825509','03','0311','TOLI CHOWK','8500','2013-02-06','MOHD SAQAWATH ALI BAKSHI','8-1-398/PM/325','PARAMOUNT COLONY,TOLICHOWKI,HY','','','1',0.5,'F','T','12A54101','M','2013-06-01',3,'2013-07-23',15000,'2013-06-01',3,24400,0,0,0,0,'F',8,0,366,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (261,'617826167','06','0611','JUBILEE HILLS','8500','2013-01-23','ARUNA','8-3-229/D/85','VENKATAGIRI,YOUSUFGUDA HYD','','','1',0.5,'F','T','12B-159614','M','2014-01-01',3,'2014-02-20',155000,'2014-01-01',3,6978.83,0,0,0,0,'F',4,0,101.42,'2013-05-18',2385,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (262,'617826209','06','0623','ERRAGADDA','8500','2013-02-04','J.RAGHUVEER','PLOT NO 8-3-167K/194A PLO','KALYAN NAGAR VENTURE II,ERRAGA','','','1',0.75,'F','T','12B9341','M','2014-01-01',30,'2014-02-08',310000,'2014-01-01',30,1713.8,0,0,0,0,'F',0,0,0,'2014-01-20',1730,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (263,'617826663','03','0311','TOLI CHOWK','8500','2013-02-07','MAHMOOD KHAN','8-1-284/OU/33/B&34/B','OUE COLONY','','','1',0.75,'F','T','NX-12-1601','M','2014-01-01',37,'2014-02-21',170000,'2014-01-01',37,1980.2,0,0,0,0,'F',3,0,0,'2014-02-06',6851.6,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (265,'617826893','06','0611','JUBILEE HILLS','8500','2013-02-06','HARISHB.','8-2-293/82/NL/308/B&299A','ROAD NO.10C','','500033','1',0.5,'F','T','13J-44262','M','2014-01-01',68,'2014-02-17',131000,'2014-01-01',68,5106.8,0,0,0,0,'F',1,0,0,'2014-01-18',2105,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (266,'617826909','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-02-07','M.VENKATESH CHARY','PLOT NO.20','NEW PADMANAGAR,KARMANGHAT','','','1',0.5,'F','T','12B4328','M','2014-01-01',8,'2014-02-24',21000,'2014-01-01',8,7530,0,0,0,0,'F',4,0,112.95,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (267,'617827822','10','0261','L.B.NAGAR','8500','2013-02-05','P.LAKSHMI NARAYANA','2-3-742/1','SAINAGAR,L.B.NAGAR','','','1',0.5,'F','T','12A 52013','M','2014-01-01',28,'2014-02-04',472000,'2014-01-01',28,13037.2,0,0,0,0,'F',0,0,188.66,'2013-07-13',7400,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (268,'617828569','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-02-01','SRI C. RAVINDER REDDY','PLOT NO.50, SY.NO.58, SAN','HASTINAPURAM NORTH, SAHEBNAGAR','','','1',0.5,'F','T','12B 53001','M','2014-01-01',14,'2014-02-20',160000,'2014-01-01',14,1255,0,0,0,0,'F',1,0,0,'2014-01-20',628,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (269,'617828650','09','0917','BHAGYANAGAR','8500','2013-02-06','B.RENUKA','H.NO,2- 22-78/1 (OLD) 22-','EENADU  SOCIETY  KUKATPALLY','','','1',0.75,'F','T','0000','M','2014-01-01',34,'2014-02-11',405000,'2014-01-01',34,3057.7,0,0,0,0,'F',5,0,0,'2014-01-31',3055,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (270,'617828744','09','0915','KPHB','8500','2013-02-08','K.RAJANI','P.NO.61,SY.NO.145/2','C.B.C.I.D COLONY,VASANTH NAGAR','','','1',0.5,'F','T','0987','M','2014-01-01',10,'2014-02-13',162000,'2014-01-01',10,627.5,0,0,0,0,'F',0,0,0,'2014-01-27',1160,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (271,'617829248','14','1411','RADHIKA','8500','2013-01-19','SRI LAXMI CONSTRUCTIONS','1-1-307/6&159','SRIRAM NAGAR,KAPRA','','','2',0.75,'F','T','60154721','L','2013-09-01',50,'2013-01-19',0,'2012-12-01',0,22143.5,23143.5,0,0,0,'F',7,0,332.15,'2013-10-29',1000,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (274,'617829699','05','0542','BARKATPURA','8500','2013-01-05','DILIP VITTAL RAO BHOSALE','3-2-754/1','RAHMATHBAGH,KACHIGUDA,NIMBOLIA','','','1',0.5,'F','T','b176240','U','2014-01-01',18,'2013-01-05',0,'2012-12-01',0,8497.7,0,0,0,0,'F',3,0,127.47,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (275,'617830097','07','0722','MARREDPALLY','8500','2013-02-14','SRI. PRAMOD RAMRAKHYANI','10-2-314','NEHRUNAGAR','','','2',1,'F','T','12b 4278','M','2014-01-01',112,'2014-02-11',1.053e+006,'2014-01-01',112,40656.6,0,0,0,0,'F',5,0,580.43,'2014-02-15',1632,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (276,'617830379','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-02-07','K.MAHESHWER REDDY','PLOT NO. 49, PHASE-1','F.C.I .COLONY','','','1',0.75,'F','T','9b2078','M','2014-01-01',33,'2014-02-17',240000,'2014-01-01',33,29359.7,0,0,0,0,'F',6,0,434.7,'2014-01-24',15000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (277,'617830854','13','1324','CHANUKYAPURI','8500','2013-01-20','G.V.LAXMI PRIYA','25-2/1','TALLABASTHI EAST ANANDBAGH','','','1',0.5,'F','T','12B17590','L','2014-01-01',15,'2013-01-20',0,'2012-12-01',0,7100.17,8157.5,0,0,0,'F',0,0,103.54,'2013-11-19',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (278,'617830977','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-02-14','V.BHAGYAMMA','PLOT NO.19 & 20','OMKARNAGAR,PHASE-II,SAGAR ROAD','','','1',0.5,'F','T','12B46242','U','2014-01-01',15,'2013-02-14',0,'2013-01-01',0,1255,0,0,0,0,'F',3,0,0,'2013-12-16',6275,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (279,'617831074','03','0311','TOLI CHOWK','8500','2013-02-15','SMT.IMRANA PARVEEN','HNO.9-4-135/A/20','RAGHAVA COLONY TOLICHOWKI','','','1',0.5,'F','T','12A 41634','L','2013-12-01',15,'2013-11-22',25000,'2013-10-01',15,627.5,1255,0,0,0,'F',0,0,0,'2014-01-21',4393,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (280,'617831217','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-02-15','D.SARITHA','PLOT NO.18,PART,HNO.7-4-2','OMKAR NAGAR,PHASE-II,SAGAR ROA','','','1',0.5,'F','T','12B3788','U','2014-01-01',15,'2013-02-15',0,'2013-01-01',0,-2.5,0,0,0,0,'F',3,0,0,'2014-02-18',630,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (281,'617831222','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-02-15','G.SRIKANTH','PLOT NO.33,HNO.7-4-22/33','PHASE-II,OMKAR NAGAR,N.S.ROAAD','','','1',0.5,'F','T','12B 3798','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',2,0,0,'2014-02-18',7530,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (282,'617831351','07','0724','SEETHAPALMANDI','8500','2013-02-16','SMT.M.SAROJA AND SMT.M. SHOBA RANI','HNO.12-10-587/41/B','MEDIBHAI SEETHPHALMANDI','','','1',0.5,'F','T','GEN','R','2014-01-01',20,'0001-01-01',0,'0001-01-01',20,0,0,0,0,0,'F',0,0,0,'2014-02-19',871,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (283,'617831428','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-02-07','SRILATHA VUJJHINI','PLOT NO. 108','ROAD NO. 4, DURGA NAGAR, BAIRA','','','1',0.5,'F','T','12B59162','M','2014-01-01',10,'2014-02-25',166000,'2014-01-01',10,627.8,0,0,0,0,'F',3,0,0,'2014-01-28',7344,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (284,'617831520','09','0915','KPHB','8500','2013-02-09','M.BAL REDDY','16-3-1200/146, PLOT NO 14','NRSA COLONY HYDERNAGAR KUKATPA','','','1',0.5,'F','T','12-349532','M','2014-01-01',4,'2014-02-15',224000,'2014-01-01',4,5196.64,0,0,0,0,'F',4,0,75.59,'2014-01-22',1500,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (285,'617831678','13','1321','DEFENCE COLONY','8500','2013-02-01','K.J.JOSHUA','30-667/243','CHANDRAGIRI COLONY','','','1',0.5,'F','T','B-12112839','L','2014-01-01',15,'2013-02-01',0,'2013-01-01',0,213,5870,0,0,0,'F',0,0,0,'2014-02-03',212,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (286,'617831818','09','0917','BHAGYANAGAR','8500','2013-02-18','M.S.SAI TEJA BUILDERS','PLOT NO-281-A & 282-A','ADDAGUTTA CO-OP HOUSING SOCIET','','','2',0.75,'F','T','NX-12-1022','M','2014-01-01',25,'2014-02-13',268000,'2014-01-01',25,-1,0,0,0,0,'F',15,0,0,'2014-02-15',1890,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (287,'617831878','09','0917','BHAGYANAGAR','8500','2013-02-14','VADLAPUDI KRISHNA BRAHMAM AND V. LALITHA','PLOT NO 130A& 131A','ADDAGUTTA CO-OP HOUSING SOCIET','','','2',0.75,'F','T','nx-12-15431','M','2014-01-01',35,'2014-02-14',262000,'2014-01-01',35,0,0,0,0,0,'F',15,0,0,'2014-02-14',1843,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (288,'617831983','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-02-02','SRI PRAVEEN DARSHAN','PLOT NO.61, AIR COLONY, C','SAHEBNAGAR, R.R.DIST','','','1',0.5,'F','T','2012-686','L','2013-10-01',15,'2013-02-02',0,'2013-01-01',0,0.5,5647.5,0,0,0,'F',2,0,0,'2013-12-12',5647,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (289,'617832191','06','0613','THATTIKHANA','8500','2013-02-18','SMT SUMITRA BAI GOEL AND OTHARS','8-2-293/82/L/107/A PLOT N','MLA COLLONY BANJARA HILLS ROAD','','500034','1',0.5,'F','T','12 b 54489','M','2014-01-01',5,'2014-02-09',70000,'2014-01-01',5,1317.97,0,0,0,0,'F',0,0,18.38,'2014-02-25',600,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (290,'617832400','05','0522','AZAMABAD','8500','2013-02-14','V. RAVI','1-9-296/A/9','ADIKMET','','','2',0.75,'F','T','12NX 2129','M','2014-01-01',40,'2014-02-15',402000,'2014-01-01',40,3665,0,0,0,0,'F',10,0,0,'2014-02-05',3665,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (291,'617832512','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-01-02','SRI TANGEDA SUMANA','17-1-391/S/339, SINGARENI','VAISHALINAGAR, HYDERABAD','','','1',0.5,'F','T','48857','M','2014-01-01',14,'2014-02-15',1.966e+006,'2014-01-01',14,1255,0,0,0,0,'F',0,0,0,'2013-12-15',7081.33,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (292,'617832586','06','0622','FATHENAGAR','8500','2013-02-15','E.VENKAT REDDY','7-1-304/6/35/G-2','B K GUDA,SANATH NAGAR HYDERABA','','','2',0.75,'F','T','NX-12-2251','M','2014-01-01',71,'2014-02-20',636000,'2014-01-01',71,15830.2,0,0,0,0,'F',14,0,227.57,'2014-02-18',6805,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (293,'617833050','07','0722','MARREDPALLY','8500','2013-02-20','YENDALA LAXMINARAYANA','10-3-20/3/34A','ADDAGUTTA','','','1',0.5,'F','T','12a37696','R','2014-01-01',21,'0001-01-01',0,'0001-01-01',0,9210.36,0,0,0,0,'F',1,0,133.36,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (294,'617833150','14','1412','HOUSING BOARD','8500','2013-02-15','TIRUPATI DEVELOPERS REP BY SURESH JAGNANI','PLOT NO 26(P),27,27(P) SY','MEERPET(V),LAXMI NAGAR COLONY','','','2',0.75,'F','T','75751','M','2013-01-01',50,'2013-02-15',0,'2013-01-01',0,0,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (295,'617833244','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-02-10','A. SRINIVAS','PLOT. NO. 36, DWARAKA TIR','HASTINAPURAM, N-EX.2, SAHEBNAG','','','1',0.5,'F','T','12-b-46021','M','2014-01-01',12,'2014-02-20',163000,'2014-01-01',12,920.61,0,0,0,0,'F',4,0,11.63,'2014-02-12',627.5,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (296,'617833523','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-02-19','SRI C. HANUMANTH REDDY','7-4-22/32, OMKAR NAGAR','BAIRAMALGUDA, SAHEBNAGAR','','','1',0.5,'F','T','13B-71212','U','2014-01-01',15,'2013-02-19',0,'2013-01-01',0,0,0,0,0,0,'F',3,0,0,'2014-02-12',627,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (298,'617833837','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-02-21','D. BALAPPA','PLOT NO.23 & 24, ADJACENT','KARMANGHAT, SAROORNAGAR, R.R.D','','','2',0.75,'F','T','13.b.1069','U','2014-01-01',5,'2013-12-21',435000,'2013-11-01',5,23980,0,0,0,0,'F',10,0,359.7,'2014-01-27',10000,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (300,'617835074','10','0243','AUTONAGAR','8500','2013-02-17','SMT. R. ANDALAMMA  WIFE OF LATE. R. CHANDRAIA','PLOT NO.45, ANMAGAL, HAYA','RTC COLONY, HYDERABAD.','','','1',0.5,'F','T','13B.3712','U','2014-01-01',15,'2013-02-17',0,'2013-01-01',0,620,0,0,0,0,'F',0,0,0,'2014-01-09',4400,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (301,'617835103','02','0211','MALAKPET','8500','2013-02-23','NAJMA KHALIL','16-10-270/6/1/A','RACE COURS ROAD','','','1',0.5,'F','T','1380211','M','2014-01-01',15,'2014-02-18',71000,'2014-01-01',15,7802.96,0,0,0,0,'F',0,0,112.95,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (302,'617835393','10','0243','AUTONAGAR','8500','2013-02-21','B . KISHTIAH','H NO .4-7-139  PLOT NO 12','SHANTHIVANAM TOWNSHIP','','','1',0.5,'F','T','13 B.3854','M','2013-12-01',13,'2014-01-21',51000,'2013-12-01',13,0.5,0,0,0,0,'F',0,0,0,'2014-02-03',627,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (303,'617835401','10','0243','AUTONAGAR','8500','2013-02-20','K.PADMAJA VANI','PLOT NO 22 HNO.4-9-280/2','R.T.C.SUPERVISOR COLONY HAYATH','','','1',0.75,'F','T','NX.12.2749','M','2014-01-01',14,'2014-02-15',277000,'2014-01-01',14,3425.15,0,0,0,0,'F',3,0,0,'2014-01-20',17755,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (304,'617835412','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-02-20','B.SUBASH REDDY','9-7-321/2','SULTHAN VALAVA,CHAMPAPET','','','1',0.5,'F','T','87548','U','2014-01-01',8,'2014-01-22',23000,'2013-12-01',8,1907.27,0,0,0,0,'F',1,0,28.24,'2013-12-10',6010,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (305,'617835585','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-02-19','SKRISHNAVENI','7-4-22/35,PLOT NO.35','OMKARNAGAR,PHASE-II','','','1',0.5,'F','T','12 B 3049','U','2014-01-01',15,'2013-02-19',0,'2013-01-01',0,0,0,0,0,0,'F',3,0,0,'2014-02-12',625,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (306,'617835639','14','1423','RAMANTHAPUR(DIV 14)','8500','2013-02-19','M.RAMA DEVI','3-18-152','PRAGATHI NAGAR','','','1',0.5,'F','T','12B.30875','M','2013-10-01',25,'2013-11-10',215000,'2013-10-01',25,-0.5,0,0,0,0,'F',4,0,0,'2013-12-12',1114,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (307,'617835644','14','1423','RAMANTHAPUR(DIV 14)','8500','2013-02-01','KESARAJU SIVA PRASAD','3-4-1/4/A/2','BALAJI NAGAR','','','1',0.5,'F','T','12B 30842','L','2013-11-01',15,'2013-02-01',0,'2013-01-01',0,0,6275,0,0,0,'F',3,0,0,'2013-12-16',6275,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (308,'617835759','09','0917','BHAGYANAGAR','8500','2013-02-23','GONDI BHANU PRASAD','4-35-224/5A','BALAKRISHNA NAGAR','','','1',0.5,'F','T','12B 39982','M','2013-12-01',13,'2014-01-15',180000,'2013-12-01',13,9143.51,0,0,0,0,'F',3,0,136.1,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (309,'617835772','14','1423','RAMANTHAPUR(DIV 14)','8500','2013-02-20','P.PRABHAKAR','3-3-64/C/3','ENDOWMENT COLONY','','','1',0.5,'F','T','12B 71085','L','2013-07-01',15,'2013-02-20',0,'2013-01-01',0,14280,29280,0,0,0,'F',8,0,214.2,'2014-01-03',15000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (310,'617836280','09','0917','BHAGYANAGAR','8500','2013-02-25','OM PRAKASH VAISHNAV','1-2-6/1','GRAMAKANTAM,HYDERNAGAR VILLAGE','','','1',0.5,'F','T','025231','M','2014-01-01',18,'2014-02-13',175000,'2014-01-01',18,1839.2,0,0,0,0,'F',0,0,27.59,'2014-01-20',600,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (311,'617836407','02','0213','MOOSARAMBAGH','8500','2013-02-11','M.MALLESH','16-11-212/49','TEEGAL GUDA','','','1',0.5,'F','T','11 B 7142','L','2013-05-01',15,'2013-02-11',0,'2013-01-01',0,2510,2510,0,0,0,'F',0,0,37.65,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (312,'617838376','09','0915','KPHB','8500','2013-02-27','SMT.KOSURI VENKATA UMA RADHA KUMARI','PLOT NO.131','SARDARPATEL NAGAR HYDER NAGAR','','','1',0.75,'F','T','NX-12-2874','M','2014-01-01',14,'2014-02-15',547000,'2014-01-01',14,1712.15,0,0,0,0,'F',3,0,0,'2014-01-29',1710,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (313,'617838485','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-02-21','ERUPAKARAMESHWARI','PLOT NO 27, PHASE-III,','CHAITANYA NAGAR','','','1',0.5,'F','T','13B 2189','R','2014-01-01',16,'0001-01-01',0,'0001-01-01',0,1373,0,0,0,0,'F',2,0,20.6,'2013-12-21',400,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (314,'617838729','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-02-24','M.SABITHA','PLOT NO.3','PATELCOLONY','','','1',0.5,'F','T','13B 2969','M','2014-01-01',13,'2014-02-13',193000,'2014-01-01',13,4469.13,0,0,0,0,'F',1,0,63.89,'2014-02-25',4000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (315,'617838998','03','0311','TOLI CHOWK','8500','2013-02-27','MUGHEERA NUMAN','9-4-77/A/14/A,PLOT NO 14/','AL HASNATH COLONY,TOLICHOWKI,','','500008','1',0.75,'F','T','NX-12-2494','M','2014-01-01',18,'2014-02-14',110000,'2014-01-01',18,10869.4,0,0,0,0,'F',3,0,158.32,'2014-01-18',5000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (316,'617839209','10','0243','AUTONAGAR','8500','2013-02-27','SRI PAGUDALA LINGA SWAMY  SON OF SRI P. VEERA','4-8-301/38/1, SRI SATYANA','HAYATHNAGAR, R.R.DISTRICT','','','1',0.5,'F','T','12A-52001','U','2014-01-01',14,'2013-09-09',99000,'2013-08-01',14,0,0,0,0,0,'F',0,0,0,'2014-02-19',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (317,'617839305','06','0611','JUBILEE HILLS','8500','2013-02-24','RAJITHAREDDYCHINNA CHOWDARY','20 B','SITE II','','','1',0.5,'F','T','12B 3676','M','2014-01-01',18,'2014-02-19',220000,'2014-01-01',18,773.55,0,0,0,0,'F',1,0,0,'2014-02-06',624,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (318,'617839723','09','0912','BALANAGAR','8500','2013-02-20','SRI.V.SREERAMCHANDRA SRIDHAR','HNO.11-1-2/5/1 PLOT NO 42','SAMATHANAGAR JINKALWADA,KUKATP','','','1',0.5,'F','T','12A-2684','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,7530,0,0,0,0,'F',1,0,112.95,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (319,'617839817','06','0622','FATHENAGAR','8500','2013-03-01','B. VENKATA NARENDRA. REDDY','7-2-1087/76/2','B K GUDA','','','1',0.5,'F','T','01063756','R','2014-01-01',20,'0001-01-01',0,'0001-01-01',20,0.5,0,0,0,0,'F',4,0,0,'2014-02-24',870,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (320,'617840416','10','0261','L.B.NAGAR','8500','2013-02-27','P.DEEVANTHA RAO','PLOT NO.8','SURYODAYA COLONY,MANSOORABAD','','','1',0.5,'F','T','13 A 3228','U','2014-01-01',15,'2013-02-27',0,'2013-01-01',0,1255,0,0,0,0,'F',0,0,0,'2013-12-24',6275,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (321,'617840769','15','1513','GACHIBOWLI (DIV 15)','8500','2013-02-20','KOLLA REDDY RANGA NARAYANAMMA','PLOT NO 29','KHAJA GUDA','','','1',0.75,'F','T','12B 3373','M','2013-04-01',20,'2013-05-18',59000,'2013-04-01',20,5138.7,0,0,0,0,'F',4,0,77.08,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (322,'617841452','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-03-02','AJAYKUMARKONKATI','PLOT NO 65','SAGER ENCLAVE','','500079','1',0.5,'F','T','12 B-13081','M','2014-01-01',11,'2014-02-20',116000,'2014-01-01',11,674.56,0,0,0,0,'F',3,0,8.85,'2014-02-01',3802.65,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (323,'617841462','10','0241','SAROORNAGAR','8500','2013-03-02','SRI AKULA ANJAN KUMAR','11-4-155, PLOT NO.50, WES','SAROORNAGAR, HYDERABAD','','','1',0.5,'F','T','5454','M','2014-01-01',14,'2014-02-10',324000,'2014-01-01',14,627.5,0,0,0,0,'F',2,0,0,'2014-01-23',627,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (324,'617841472','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-03-02','SRI N. RAHUNANDAN REDDY','PLOT NO.86 & 87 PART, NAG','HASTINAPURAM, SAHEBNAGAR','','','1',0.5,'F','T','12B13083','L','2014-01-01',16,'2013-03-02',0,'2013-02-01',0,2028.3,7048.3,0,0,0,'F',4,0,30.42,'2013-12-20',5020,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (325,'617841572','12','0924','JEEDIMETLA','8500','2013-02-17','S V S CONSTRUCTIONS REP BY SRI.K.SURYA PRAKAS','PLOT NO 4,5 &6','PET BASHEERABAD,QUTHBULLAPUR','','','2',1,'F','T','9X12-1533','M','2014-01-01',69,'2014-02-03',3.933e+006,'2014-01-01',69,0,0,0,0,0,'F',75,0,0,'2014-02-13',9132,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (326,'617841717','01','0123','PATHERGATTI','8500','2013-03-02','SANTWANA HAJRA','21-3-338/1/B','PETLABURZ, BEHIND POLICE LINES','','','1',0.5,'F','T','','U','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,5189.95,0,0,0,0,'F',0,0,75.31,'2013-08-26',1882,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (328,'617842060','06','0622','FATHENAGAR','8500','2013-03-04','KANTHA','7-1-277/59/45,','B.K GUDA','','','1',0.5,'F','T','NX-13-2018','M','2014-01-01',30,'2014-02-22',100000,'2014-01-01',30,7810.34,0,0,0,0,'F',4,0,114.47,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (329,'617843238','02','0211','MALAKPET','8500','2013-03-02','MRS. SYEDA RAFIA SULTANA','16-9-681/12/A','MALAK PET','','','1',0.5,'F','T','B.13023904','L','2013-07-01',17,'2013-05-27',30000,'2013-04-01',15,-0.5,1882.5,0,0,0,'F',0,0,0,'2013-09-11',2510,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (330,'617843479','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-02-22','B.SUBASH REDDY','9-7-321/1','SULTANVALVA,CHAMPAPET','','','1',0.5,'F','T','252415','L','2014-01-01',12,'2014-01-21',27000,'2013-12-01',12,1978.5,627.5,0,0,0,'F',1,0,28.95,'2013-12-10',5600,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (331,'617844038','10','0241','SAROORNAGAR','8500','2013-03-03','PRASANNA RANITALLA','H.NO.11-5-183','ROAD NO.1, VENKATESHWARA COLON','','500035','1',0.5,'F','T','13R 3593','M','2014-01-01',14,'2014-02-04',168000,'2014-01-01',14,7422.34,0,0,0,0,'F',2,0,108.64,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (332,'617844259','03','0312','GOLCONDA','8500','2013-03-02','V.YADAIAH','13-6-818/A/7/1','LANGER HOUSE HYDERABAD','','','1',0.5,'F','T','SLUM','L','2013-12-01',15,'2013-03-02',0,'2013-02-01',0,3137,6275,0,0,0,'F',0,0,0,'2013-10-15',3138,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (333,'617844438','03','0311','TOLI CHOWK','8500','2013-03-07','MR.MASOOD ALI KHAN AND OTHERS','8-1-423/A/149 & 150','DIAMOND HILLS','','','1',0.5,'F','T','13B 2212','M','2014-01-01',30,'2014-02-21',323000,'2014-01-01',30,14912.8,0,0,0,0,'F',2,0,218.72,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (334,'617844443','03','0311','TOLI CHOWK','8500','2013-03-07','MR.MOHAMMED ANWAR SAYEED KHAN','8-1-423/A/318','DIAMOND HILLS','','','1',0.5,'F','T','12B 52463','U','2014-01-01',15,'2013-03-07',0,'2013-02-01',0,7147.24,0,0,0,0,'F',3,0,103.54,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (335,'617844982','07','0722','MARREDPALLY','8500','2013-03-06','M.RAMANAIAH','10-3-32/9/16','VARSHA VIHAR,EAST MARREDPALLY,','','','1',0.5,'F','T','12B 8096','M','2013-11-01',190,'2013-12-23',375000,'2013-11-01',190,21363.5,0,0,0,0,'F',1,0,320.45,'2013-12-11',2470,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (336,'617845767','06','0621','SOMAJIGUDA','8500','2013-03-07','MOHAMMED AZAHARUDDIN','6-3-1247/443','M.S.MAKTHA,OPP RAJ BHAVAN ROAD','','','1',0.5,'F','T','12112962','M','2014-01-01',14,'2014-02-19',155000,'2014-01-01',14,6940.15,0,0,0,0,'F',1,0,103.54,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (337,'617846499','06','0631','YELLAREDDYGUDA','8500','2013-03-03','ABDULRAHMANBINMAHMOOD','8-3-231/A/58/1','SRIKRISHNANAGAR','','','1',0.5,'F','T','13B46451','M','2014-01-01',15,'2014-02-20',94000,'2014-01-01',15,6902.5,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (338,'617846789','09','0912','BALANAGAR','8500','2013-03-05','B.EDUKONDALU','7-1-41/2','FEROZGUDA','','','1',0.5,'F','T','13 B 23947','M','2013-12-01',10,'2014-01-16',143000,'2013-12-01',10,6275,0,0,0,0,'F',2,0,94.13,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (339,'617846812','15','0614','MADHAPUR','8500','2013-03-07','M.A.RAHIM','P.NO.210','SCB NAGAR,NEW HAFEEZPET','','','1',0.5,'F','T','12A 82459','L','2014-01-01',8,'2013-11-26',86000,'2013-10-01',8,3792.73,1882.5,0,0,0,'F',1,0,56.47,'2013-09-24',3138,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (340,'617847319','06','0622','FATHENAGAR','8500','2013-03-07','D.SURENDRA KUMAR','7-2-1438','I.H.COLONY','','','1',0.5,'F','T','12167893','U','2014-01-01',15,'2013-03-07',0,'2013-02-01',0,7081.34,0,0,0,0,'F',3,0,103.54,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (341,'617847378','03','0311','TOLI CHOWK','8500','2013-03-08','MR.SYED AZAM','HNO.8-1-423/129/A/23','DIAMOND HILLS SHAIKPET','','','1',0.5,'F','T','80176','U','2014-01-01',15,'2013-03-08',0,'2013-02-01',0,3765.5,0,0,0,0,'F',2,0,0,'2013-12-27',3137,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (342,'617847383','03','0311','TOLI CHOWK','8500','2013-03-08','MOHAMMED VIKHAR HUSSAIN','8-1-423/A/17','DIAMOHD HILLS','','','1',0.5,'F','T','81660','U','2014-01-01',15,'2013-03-08',0,'2013-02-01',0,7147.24,0,0,0,0,'F',1,0,103.54,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (344,'617847988','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-03-10','N.VINODA','PLOT.NO.26','HANUMAN NAGAR KARMANGHS','','','1',0.5,'F','T','13B-5631','U','2014-01-01',15,'2013-11-20',120000,'2013-10-01',15,6902.5,0,0,0,0,'F',4,0,103.54,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (345,'617849071','03','0311','TOLI CHOWK','8500','2013-03-08','SHAHEEN SULTANA','8-1-423/A/211','DIAMOND HILLS','','','1',0.5,'F','T','81181','M','2014-01-01',9,'2014-02-20',136000,'2014-01-01',9,710.32,0,0,0,0,'F',2,0,6,'2014-02-09',6600,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (346,'617849465','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-02-20','G. USHA RANI','PLOT NO.13 & 14, ADJACENT','KARMANGHAT, SAROORNAGAR, R.R.D','','','2',0.75,'F','T','12 B 38865','M','2014-01-01',8,'2014-02-19',311000,'2014-01-01',8,23980,0,0,0,0,'F',10,0,359.7,'2014-01-27',10000,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (348,'617849851','07','0733','LALAPET','8500','2013-03-10','DORNALA MADUKAR','12-1-508/79/2','LAXMI NAGAR','','','1',0.75,'F','T','12B 3519','M','2014-01-01',36,'2014-02-03',396000,'2014-01-01',36,1.1,0,0,0,0,'F',1,0,0,'2014-02-14',1890,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (349,'617849903','09','0917','BHAGYANAGAR','8500','2013-03-12','T.RAMULU','5-6-137/6/P-2','DAYARGUDA,BABBUGUDA,KUKATPALLY','','','1',0.5,'F','T','13B 3853','U','2014-01-01',15,'2013-03-12',0,'2013-02-01',0,-2.5,0,0,0,0,'F',0,0,0,'2014-02-22',630,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (350,'617851543','06','0622','FATHENAGAR','8500','2013-03-15','SMT GEETHA TIWARI','7-1-277/59/77','B.K GUDA','','','1',0.5,'F','T','12B 4928','R','2014-01-01',14,'0001-01-01',0,'0001-01-01',12,0.5,0,0,0,0,'F',3,0,0,'2014-02-10',624,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (351,'617851955','10','0243','AUTONAGAR','8500','2013-03-14','Y.  VASANTHA   WIFE  OF  Y.JALANDHAR REDDY','PLOT NO.72,  ANMANGAL','R T C COLONY NEAR BANJAR COLON','','','1',0.5,'F','T','12B 56301','U','2014-01-01',15,'2013-03-14',0,'2013-02-01',0,6902.5,0,0,0,0,'F',0,0,103.54,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (352,'617852064','10','0243','AUTONAGAR','8500','2013-03-16','T.JANGAMMA','PLOT NO.39','MIDHANI COLONY NEAR BANJARA CO','','','1',0.5,'F','T','13B 1936','U','2014-01-01',15,'2013-03-16',0,'2013-02-01',0,0.5,0,0,0,0,'F',0,0,0,'2014-02-24',1254,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (354,'617852976','10','0243','AUTONAGAR','8500','2013-03-14','D .RAMESH REDDY','H NO 4-9-649/14','VINAYAKANAGAR COLONY','','','1',0.5,'F','T','13B 3224','U','2014-01-01',15,'2013-03-14',0,'2013-02-01',0,1476.34,0,0,0,0,'F',0,0,21.04,'2014-02-26',1500,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (356,'617853550','02','0213','MOOSARAMBAGH','8500','2013-03-12','K.CHANDRA MOHAN RAO','16-11-16/189/1','TEEGALGUDA,MALAKPET HYD','','','1',0.75,'F','T','06820052','M','2013-11-01',20,'2013-12-21',152000,'2013-11-01',20,15067.5,0,0,0,0,'F',5,0,226.01,'2014-02-21',1050,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (357,'617853640','06','0613','THATTIKHANA','8500','2013-03-12','SMT.K.JAYANTHI','PLOT NO 1','WOMENS CO-OP SOCIETY ROAD NO 2','','','1',0.5,'F','T','13B 1097','M','2014-01-01',15,'2014-02-20',30000,'2014-01-01',15,1882.5,0,0,0,0,'F',1,0,0,'2013-12-31',5020,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (358,'617853660','06','0613','THATTIKHANA','8500','2013-03-16','ASHWINJAIN','8-2-268/S/91/A-1','ROAD NO 2 SAGAR SOCIETY BANJAR','','500034','1',0.5,'F','T','13B 1089','M','2014-01-01',15,'2014-02-20',30000,'2014-01-01',15,627.5,0,0,0,0,'F',1,0,0,'2014-02-06',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (359,'617853687','09','0917','BHAGYANAGAR','8500','2013-03-14','R. JHANSI LAKSHMI','PLOT NO: 37A/1, SY.NO: 18','ADDAGUTTA CO-OP SOCIETY, KUKAT','','','2',0.75,'F','T','94','M','2014-01-01',35,'2014-02-14',125000,'2014-01-01',35,7565.39,0,0,0,0,'F',10,0,105.6,'2014-01-28',8000,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (360,'617853692','09','0917','BHAGYANAGAR','8500','2013-03-14','M. SRINIVASA RAO','4-32-41/83,PLOT NO:112','KAMALA PRASANNA NAGAR, ALLWYN','','','2',0.75,'F','T','NX-12-2083','M','2014-01-01',16,'2014-02-03',28000,'2014-01-01',16,48729.5,0,0,0,0,'F',12,0,725.01,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (361,'617853740','09','0917','BHAGYANAGAR','8500','2013-03-17','SRI.CH.KONDAL RAO','HNO.5-3-13','KUKATPALLY BALANAGAR','','','2',1,'F','T','NX12-1700','M','2014-01-01',33,'2014-02-07',575000,'2014-01-01',33,0.8,0,0,0,0,'F',16,0,0,'2014-02-21',1990,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (362,'617853804','06','0622','FATHENAGAR','8500','2013-03-19','MURALIMOHAN','SRT 1117','SANATHNAGAR','','500018','1',0.5,'F','T','000174','M','2014-01-01',14,'2014-02-21',170000,'2014-01-01',14,6256.95,0,0,0,0,'F',3,0,92.49,'2013-10-15',2000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (363,'617854027','03','0312','GOLCONDA','8500','2013-03-09','SYED NAJEEB  AND OTHERS','13-6-823/A/9','MEHDI COLONY','','','1',0.5,'F','T','13A 41632','L','2013-12-01',15,'2013-03-09',0,'2013-02-01',0,36924.9,36650,0,0,0,'F',6,0,549.75,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (364,'617854040','03','0311','TOLI CHOWK','8500','2013-03-19','HAJARA PARVEEN','8-1-364/26','DELUX COLONY,TOLI CHOWK,HYDERA','','','1',0.5,'F','T','13 B -7048','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,0.5,0,0,0,0,'F',1,0,0,'2014-02-08',627,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (365,'617854497','09','0917','BHAGYANAGAR','8500','2013-03-14','T.SATYAKALA','35-449/1, PLOT NO-24','MADHAVARAM NAGAR, KUKATPALLY','','','1',0.75,'F','T','NX -12-1791','M','2014-01-01',6,'2014-02-12',150000,'2014-01-01',6,49444.4,0,0,0,0,'F',9,0,740.44,'2013-06-26',11000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (366,'617854875','10','0243','AUTONAGAR','8500','2013-03-14','V.SUNITHA','PLOT.NO.173.','LECTURERS COLONY','','','1',0.75,'F','T','13B 3197','M','2014-01-01',28,'2014-02-15',242000,'2014-01-01',28,20008.4,0,0,0,0,'F',5,0,279.49,'2014-02-03',15000,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (367,'617854900','01','0123','PATHERGATTI','8500','2013-03-21','SHAKUNTALA DEVI','21-1-574/1','RIKABGUNJ,PATHERGATTI','','','1',0.5,'F','T','12035182','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,5950.53,0,0,0,0,'F',3,0,85.54,'2013-05-08',1200,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (368,'617855013','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-03-16','CH.PRABHAKAR REDDY','P NO.293','PRASHANTH NAGAR,VANASTHALI PUR','','','1',0.5,'F','T','c','M','2014-01-01',15,'2014-02-12',46000,'2014-01-01',15,-17.9,0,0,0,0,'F',3,0,0,'2014-02-12',1250,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (369,'617855254','10','1031','MARUTHINAGAR (DIV 10)','8500','2013-03-17','GAYATHRI  HOMES','1-7-66/A,','HANUMAN NAGAR','','','1',0.75,'F','T','NX-12-39641','M','2014-01-01',17,'2014-02-19',154000,'2014-01-01',17,31729.6,0,0,0,0,'F',8,0,445.2,'2014-02-04',24000,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (370,'617855427','14','1411','RADHIKA','8500','2013-03-20','SMT. K. BHAGYAMMA','1-1-241/59, PLOT NO 59  P','BHAVANI  NAGAR, RADHIKA','','','1',0.5,'F','T','12 B 3854','L','2013-09-01',15,'2013-03-20',0,'2013-02-01',0,4392.5,4392.5,0,0,0,'F',4,0,65.89,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (371,'617855432','14','1411','RADHIKA','8500','2013-03-20','SMT.P. ASHA  JYOTHI','1-9-323/8B','HANUMAN   NAGAR, KUAHAIGUDA','','','1',0.5,'F','T','1185643','M','2013-02-01',15,'2013-03-20',0,'2013-02-01',0,0,0,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (372,'617855526','03','0311','TOLI CHOWK','8500','2013-03-18','FIRASATUNNISA BEGUM','8-1-398/PM/272','PROMOUNT COLONY','','','2',0.75,'F','T','4679-05','M','2013-10-01',23,'2013-11-04',200000,'2013-10-01',23,26404,0,0,0,0,'F',9,0,396.06,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (373,'617855674','03','0311','TOLI CHOWK','8500','2013-03-21','R NEELAVENI AND OTHERS','PLOT NO 71','VETERINARY COLONY','','','1',0.5,'F','T','13B 2419','M','2014-01-01',20,'2014-02-25',232000,'2014-01-01',20,2947.4,0,0,0,0,'F',3,0,0,'2013-12-20',7251.8,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (374,'617855775','09','0911','MOOSAPET','8500','2013-03-18','M.VENUGOPAL','15-21-150/78 PART','BALAJI NAGAR KUKATPALLY','','','1',0.5,'F','T','13b15754','M','2014-01-01',10,'2014-02-21',25000,'2014-01-01',10,34091.1,0,0,0,0,'F',5,0,504.49,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (375,'617856094','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-03-21','SAMA  MOHAN  REDDY','PLOT NO .404','PRASANTHNAGAR','','','1',0.75,'F','T','12b0987','M','2014-01-01',90,'2014-02-16',150000,'2014-01-01',90,11635.2,0,0,0,0,'F',6,0,0,'2013-12-18',32985,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (376,'617856378','09','0913','HASMATHPET','8500','2013-03-19','SRI.M.KAMALAKAR REDDY','HNO.8-5-283/2,(OLDNO.9-40','BRINDAVAN COLONY OLD BOWENPALL','','','1',0.5,'F','T','13B 81467','U','2014-01-01',15,'2013-03-19',0,'2013-02-01',0,3175.15,0,0,0,0,'F',3,0,47.06,'2013-09-24',3765,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (377,'617856575','10','0244','ALKAPURI','8500','2013-03-15','GUDIPATI UMA DEVI','PLOT NO.4/2,ROAD NO.1','NEW NAGOLE COLONY','','','1',0.5,'F','T','2012-A2.13815','M','2013-12-01',19,'2014-01-23',99000,'2013-12-01',19,-0.6,0,0,0,0,'F',2,0,0,'2014-01-27',820,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (378,'617857157','10','0243','AUTONAGAR','8500','2013-03-15','SRI A. MALLAIAH  SON OF A. MALLAIAH','PLOT NO.262, ANMAGAL, HAY','RTC COLONY, HYDERABAD.','','','1',0.5,'F','T','13B 4262','U','2014-01-01',15,'2013-03-15',0,'2013-02-01',0,7137.82,0,0,0,0,'F',0,0,103.54,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (380,'617857694','05','0522','AZAMABAD','8500','2013-02-20','V.PRASAD','1-9-296/A/8','ADIKMET','','','2',0.75,'F','T','b176976','M','2014-01-01',44,'2014-02-15',820000,'2014-01-01',44,10995.5,0,0,0,0,'F',10,0,164.93,'2013-12-17',7330,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (381,'617857809','10','0261','L.B.NAGAR','8500','2012-11-10','M.SRINIVASA CHARYULU','PLOT NO.105','KRUSHINAGAR,BANDLAGUDA','','','1',0.5,'F','T','12B 143561','U','2014-01-01',20,'2012-11-10',0,'2012-10-01',0,35.58,0,0,0,0,'F',0,0,0,'2014-02-15',1000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (382,'617857951','10','0243','AUTONAGAR','8500','2013-03-15','S.SURESH KUMAR','P.NO 29 S PART & 32','RAJAPPA NAGAR','','','1',0.5,'F','T','13B 3045','M','2014-01-01',7,'2014-02-14',94000,'2014-01-01',7,-0.5,0,0,0,0,'F',0,0,0,'2014-02-17',628,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (383,'617858280','15','0614','MADHAPUR','8500','2013-03-20','BALAJI CVR FAMILY TRUST REP BY ITS CHAIRMAN S','1-98/8/9,PLOT NO.8,SY.NO.','MADHAPUR(V),SERLINGAMPALLY(M),','','','1',0.5,'F','T','13B 3228','L','2013-10-01',15,'2013-03-20',0,'2013-02-01',0,5038.83,5020,0,0,0,'F',1,0,75.3,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (384,'617858524','06','0624','S.R.NAGAR','8500','2013-03-22','SRI.B.SREESAILAM','HNO.7-1-277/226/310C','B.K.GUDA,S.R.NAGAR','','','1',0.5,'F','T','NX-12-3849','M','2014-01-01',18,'2014-02-10',183000,'2014-01-01',18,0.9,0,0,0,0,'F',3,0,0,'2014-02-12',772,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (385,'617858539','06','0624','S.R.NAGAR','8500','2013-03-22','SMT.VITTAL SWATHI','HNO.7-1-450/10','AMEERPET,S.R.NAGAR','','','1',0.5,'F','T','12A 303148','R','2014-01-01',18,'0001-01-01',0,'0001-01-01',0,0.9,0,0,0,0,'F',3,0,0,'2014-02-22',1546,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (386,'617858636','06','0611','JUBILEE HILLS','8500','2013-03-15','SUGUNA NAIDU STALAM','PLOT NO.64-III','ROAD NO.71,JUBILEE HILLS,HYD','','','1',0.5,'F','T','13B-3229','M','2014-01-01',32,'2014-02-07',312000,'2014-01-01',32,-0.07,0,0,0,0,'F',1,0,0,'2014-02-07',920,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (387,'617858656','06','0611','JUBILEE HILLS','8500','2013-03-19','CHADAPETA NANDITA PRIYA DARSHINI','8-2-293/82/321/1','ROAD NO 25','','','1',0.5,'F','T','12B-13020','M','2014-01-01',14,'2014-02-18',70000,'2014-01-01',14,636.8,0,0,0,0,'F',1,0,9.28,'2014-02-06',1220,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (388,'617858912','10','0243','AUTONAGAR','8500','2013-03-23','SANEM ANJAIAH','PLOT NO .113','VEERABHADRA NAGAR','','','1',0.5,'F','T','12B5649','U','2014-01-01',16,'2013-03-23',0,'2013-02-01',0,7048.3,0,0,0,0,'F',0,0,105.72,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (389,'617858937','14','1412','HOUSING BOARD','8500','2013-03-14','SAINI THIRUMAL','PLOT.NO.36 STREET.NO.08','RAGHAVENDRA NAGAR NACHARAM','','','1',0.5,'F','T','01627458','M','2013-02-01',15,'2013-03-14',0,'2013-02-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (390,'617858992','10','0243','AUTONAGAR','8500','2013-03-22','Y.SUNITHA WIFE OF Y.V.KUMAR','PLOT NO.43','MEDHANI COLONY ,HAYATHNAGAR VI','','','1',0.5,'F','T','12B 54218','L','2013-11-01',15,'2013-03-22',0,'2013-02-01',0,1647.5,5647.5,0,0,0,'F',0,0,24.71,'2013-12-24',4000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (391,'617859144','13','1321','DEFENCE COLONY','8500','2013-03-22','ANOOP NANDI','33-95/1','OFFICERS COLONY','','','1',0.5,'F','T','13023578','L','2014-01-01',15,'2013-03-22',0,'2013-02-01',0,627.5,6902.5,0,0,0,'F',0,0,0,'2014-01-30',655,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (392,'617862528','10','0243','AUTONAGAR','8500','2013-03-26','G.SUDHARANI','PLOT NO 29 ROAD NO 1','ARUNODAYANAGAR COLONY','','500070','1',0.5,'F','T','12b15870','L','2013-11-01',16,'2013-03-26',0,'2013-02-01',0,5647.5,5647.5,0,0,0,'F',0,0,84.71,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (393,'617863650','10','0242','DILSHUKNAGAR','8500','2013-03-26','VARA PRASAD','PLOT NO.95,SY.NO.208','ROAD NO.4,VIDYUTH NAGAR COLONY','','','1',0.5,'F','T','13B13123','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,1882.5,0,0,0,0,'F',0,0,28.24,'2013-11-09',5020,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (394,'617864292','10','0261','L.B.NAGAR','8500','2013-03-14','SMT. A. SUCHARITHA DEVI  WIFE OF A. PRAKASH R','PLOT NO.105 & 104 PART, S','ROAD NO.6, MANSOORABAD, L.B.NA','','','1',0.5,'F','T','12B-59012','L','2013-11-01',17,'2013-03-14',0,'2013-02-01',0,5696.1,5696.1,0,0,0,'F',0,0,85.44,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (395,'617864578','06','0631','YELLAREDDYGUDA','8500','2013-03-30','M.LAKSHMI PRASANNA','8-3-678/27','PRAGATHI NAGAR','','','2',0.75,'F','T','Nx-12-1854','M','2014-01-01',34,'2014-02-06',553000,'2014-01-01',34,3665,0,0,0,0,'F',10,0,0,'2014-02-03',3665,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (396,'617865220','07','0722','MARREDPALLY','8500','2013-03-30','M.PRABHAKER REDDY','10-3-18/10/1SY.NO.74,T.S.','ADDAGUTTA,EAST MARREDPALLY,SEC','','','2',1.5,'F','T','12N-10825','M','2014-01-01',249,'2014-02-06',2.707e+006,'2014-01-01',249,-1.8,0,0,0,0,'F',19,0,0,'2014-02-08',3385,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (397,'617865650','13','1324','CHANUKYAPURI','8500','2013-04-01','G.SHOBHA RANI','10-277/4','VASANTHAPURI COLONY','','','1',0.5,'F','T','12A 52337','L','2014-01-01',15,'2013-04-01',0,'2013-03-01',0,6435.01,6275,0,0,0,'F',0,0,94.13,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (398,'617865727','13','1321','DEFENCE COLONY','8500','2013-04-01','SREENIVAS KALUVALA','P,NO,2,SY,NO,228/1','BRUNDAVAN COLONY','','','1',0.5,'F','T','81630','L','2014-01-01',15,'2013-04-01',0,'2013-03-01',0,6350.3,6275,0,0,0,'F',1,0,94.13,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (399,'617865894','03','0321','HUMAYUN NAGAR','8500','2013-04-01','CITY HEIGHTS CONSTRUCTION REP BY MOHD RAHMATH','HNO.10-4-13/5/1','MASABTANK HUMAYUNNAGAR HYDERAB','','','2',0.75,'F','T','21594/12','M','2014-01-01',47,'2014-02-11',375000,'2014-01-01',47,66637.8,0,0,0,0,'F',20,0,946.5,'2013-12-03',10000,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (400,'617866156','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-03-26','YUGENDAR RAMPEESA','PLOT NO.247','HASTINAPURAM NORTH,KARMANGHAT','','','1',0.5,'F','T','13B 2905','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',4,7279.01,0,0,0,0,'F',1,0,103.54,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (402,'617866232','15','0614','MADHAPUR','8500','2013-04-03','M YADHAIAH','1-3/7/B/3','MASEED BANDA,KONDAPUR','','','1',0.5,'F','T','13B 3844','L','2014-01-01',15,'2013-04-03',0,'2013-03-01',0,30620.9,30575,0,0,0,'F',5,0,458.63,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (403,'617866447','05','0535','RAMANTHAPUR (DIV 5)','8500','2013-03-20','SRI.D.YADAGIRI','HNO.2-3-512/27/4','BAPUNAGAR AMBERPET','','','1',0.5,'F','T','121139813','R','2014-01-01',21,'0001-01-01',0,'0001-01-01',14,46143.3,0,0,0,0,'F',7,0,662.96,'2014-02-18',1050,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (404,'617866939','13','1321','DEFENCE COLONY','8500','2013-04-01','K.R.CHOUDARY','36-134,PLOT NO.664,SY.NO.','RAMAKRISHNA PURAM','','','1',0.5,'F','T','B .12113114','L','2014-01-01',15,'2013-04-01',0,'2013-03-01',0,0,2955,0,0,0,'F',0,0,0,'2014-02-07',213,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (405,'617867539','02','0231','SANTOSHNAGAR','8500','2013-04-03','MOHAMMED YOUSUF','17-1-383/IP/PLOT.NO.75','INDRA PRASTHA TOWN SHIP','','','1',0.5,'F','T','13-B 13159','M','2014-01-01',4,'2014-02-18',220000,'2014-01-01',4,13914.6,0,0,0,0,'F',2,0,194.48,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (406,'617867548','02','0213','MOOSARAMBAGH','8500','2013-04-05','SUKUMAR DAS','16-11-511/D/306','MOOSARAM BAGH','','','1',0.5,'F','T','1220557','R','2014-01-01',18,'0001-01-01',0,'0001-01-01',0,7554.24,0,0,0,0,'F',0,0,108.71,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (407,'617867769','10','0243','AUTONAGAR','8500','2013-04-03','SHEETAL','4-9-776/29','YELLA REDDY COLONY','','','1',0.5,'F','T','13813496','M','2014-01-01',14,'2014-02-16',30000,'2014-01-01',14,1255,0,0,0,0,'F',0,0,0,'2014-01-16',5020,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (408,'617867774','10','0243','AUTONAGAR','8500','2013-04-05','R . NARASIMHA  REDDY','H NO 4-7-202/1 PLOT NO 19','PADMAVATHI COLONY PH II','','','1',0.75,'F','T','NX-2-2068','L','2013-12-01',50,'2013-04-05',0,'2013-03-01',0,25246.5,28246.5,0,0,0,'F',4,0,378.7,'2014-01-25',3000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (409,'617868400','06','0624','S.R.NAGAR','8500','2013-04-05','P.BALAIAH','7-1-413/7','AMEERPET,S.R.NAGAR,HYDERABAD','','','1',0.5,'F','T','13B-418256','R','2014-01-01',18,'0001-01-01',0,'0001-01-01',0,7514.32,0,0,0,0,'F',4,0,107.98,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (410,'617868459','06','0611','JUBILEE HILLS','8500','2013-04-02','YADAVA REDDY KOMPALLY','A/61,FILM NAGAR COOPERATI','FILM NAGAR,JUBILEE HILLS HYDER','','','1',0.75,'F','T','NX-12-2007','M','2014-01-01',34,'2014-02-18',320000,'2014-01-01',34,1861.39,0,0,0,0,'F',3,0,23.46,'2014-02-18',11780,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (411,'617868656','03','0311','TOLI CHOWK','8500','2013-04-03','MOHD ATHER ALI','9-4-135/D/10','VALI COLONY, TOLICHOWKI, HYDER','','','1',0.5,'F','T','13B-13354','L','2013-12-01',28,'2013-05-16',28000,'2013-04-01',28,11730.4,10074.4,0,0,0,'F',0,0,170.01,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (412,'617868661','03','0311','TOLI CHOWK','8500','2013-04-04','NASEEM SULTANA','8-1-423/A/107','DIAMOND COLONY','','','1',0.5,'F','T','13B-13359','M','2014-01-01',33,'2014-02-21',253000,'2014-01-01',33,10799.3,0,0,0,0,'F',2,0,160.11,'2013-09-05',627,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (413,'617868858','09','0915','KPHB','8500','2013-04-06','P.KALYAN CHAKRAVARTHYAND B.BHANU REKHA','PLOT NO.195','S.P NAGAR ,HYDERNAGAR','','','1',0.75,'F','T','NX-12-2131','M','2014-01-01',34,'2014-02-16',332000,'2014-01-01',34,0.9,0,0,0,0,'F',3,0,0,'2014-02-24',1712,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (415,'617869258','04','0431','RED HILLS HIGH LEVEL','8500','2013-04-04','MOHD.  ZABIHATHER','11-4-624/1/A','BAZAAR GHAT','','','1',1,'F','T','NX-12-2848','M','2013-10-01',59,'2013-11-14',411000,'2013-10-01',59,13639.8,0,0,0,0,'F',6,0,204.6,'2013-12-05',15000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (416,'617869614','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-04-05','S. SHARATH CHANDRA RAJU','PLOT NO. 116, ROAD NO.6','SRI SRINIVASAPURAM COLONY, VAN','','','1',0.5,'F','T','13B7700','U','2014-01-01',15,'2013-04-05',0,'2013-03-01',0,0,0,0,0,0,'F',0,0,0,'2014-02-13',628,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (417,'617869844','10','0243','AUTONAGAR','8500','2013-03-25','N . CHADRAKALA','PLOT NO .8 & 21','SREE  SRINIVAS  COLONY','','','1',0.5,'F','T','13B-2200','U','2014-01-01',15,'2013-03-25',0,'2013-02-01',0,6902.5,0,0,0,0,'F',0,0,103.54,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (418,'617870782','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-04-09','GANAPALLY KAVITHA','PLOT NO.4','KESAVAPURAM COLONY,ANUPAMA NAG','','','1',0.5,'F','T','2012 A 2 138205','M','2014-01-01',12,'2014-02-20',152000,'2014-01-01',12,5093.26,0,0,0,0,'F',1,0,73.77,'2013-10-24',1000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (419,'617870900','06','0611','JUBILEE HILLS','8500','2013-04-04','PAWANCHANDJAIN','501-III','JUBILEE HILLS  ROAD NO 86','','500033','1',0.75,'F','T','NX-13-1072','M','2014-01-01',6,'2014-02-22',50000,'2014-01-01',6,1715.6,0,0,0,0,'F',3,0,0,'2014-01-27',1710,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (420,'617871030','15','0614','MADHAPUR','8500','2013-04-06','M.MALLESH GOUD AND OTHERS','1-44','MASEED BANDA GRAMAKANTAM','','','1',0.5,'F','T','13B-10566','L','2014-01-01',15,'2013-04-06',0,'2013-03-01',0,3848,6275,0,0,0,'F',4,0,0,'2013-08-07',600,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (421,'617871050','15','0614','MADHAPUR','8500','2013-04-02','MUTHYALANARENDRA','PLOT : 23','KRITHIKA LAYOUT','','500081','2',0.75,'F','T','NX-12-2982','M','2014-01-01',102,'2014-02-06',842000,'2014-01-01',102,11866,0,0,0,0,'F',7,0,177.99,'2013-12-16',2571,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (422,'617871190','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-04-05','ARUNA M','6-254','RAGHAVENDRA NAGAR','','500097','1',0.5,'F','T','12b52379','M','2014-01-01',8,'2014-02-24',223000,'2014-01-01',8,36650,0,0,0,0,'F',6,0,549.75,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (423,'617871375','13','1321','DEFENCE COLONY','8500','2013-04-08','J.MEENAKSHI DEVI','27-16/12/7/1/89','SRI KRISHNA NAGAR,NEREDMET','','','1',0.5,'F','T','13024303','L','2014-01-01',15,'2013-04-08',0,'2013-03-01',0,2510,6275,0,0,0,'F',0,0,37.65,'2013-11-27',3765,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (424,'617871387','13','1322','SAINATHPURAM','8500','2013-04-10','M.MADHAVA RAO','PLOT.NO.138','OLD SAFILGUDA','','','2',0.75,'F','T','13B 1178','L','2014-01-01',50,'2013-04-10',0,'2013-03-01',0,18020.2,22070,0,0,0,'F',6,0,264.84,'2013-06-30',4414,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (425,'617871572','13','1324','CHANUKYAPURI','8500','2013-04-04','SARITHADOKKU','1-167/A','BHAVANI NAGAR','','500047','1',0.5,'F','T','13023020','L','2014-01-01',15,'2013-04-04',0,'2013-03-01',0,1255,6275,0,0,0,'F',3,0,0,'2014-01-03',5020,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (426,'617871726','09','0917','BHAGYANAGAR','8500','2013-04-13','V VIJAYA LAXMIV','5-5-33/33/P-56','VIGNANAPURI, KUKATPALLY','','500072','1',0.5,'F','T','00988','M','2014-01-01',15,'2014-02-12',95000,'2014-01-01',15,1883,0,0,0,0,'F',1,0,0,'2013-12-07',4392,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (427,'617871766','09','0917','BHAGYANAGAR','8500','2013-04-08','K.SURYANARAYANARAJU','22-310/2, P.NO.44C','ADDAGUTTA COOPERATIVE HOUSING','','','1',0.5,'F','T','13B 7053','M','2014-01-01',13,'2014-02-14',401000,'2014-01-01',13,2999.76,0,0,0,0,'F',0,0,44.46,'2013-12-23',10660,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (428,'617871791','09','0917','BHAGYANAGAR','8500','2013-04-03','SMT.V. SWETHA','PLOT NO 234 SY NO 200,BHA','SOCIETY LTD KUKATPALLY PHASE-I','','','1',0.5,'F','T','12B 40088','M','2014-01-01',12,'2014-02-15',170000,'2014-01-01',12,-0.5,0,0,0,0,'F',3,0,0,'2014-02-14',627,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (429,'617871900','09','0911','MOOSAPET','8500','2013-04-06','VENKATA SATYA SAI SUDHA RANI AND OTHERS','13-9-3','PANDU RANGA NAGAR MOTHINAGAR','','','2',0.75,'F','T','7b 42627','M','2014-01-01',42,'2014-02-17',468000,'2014-01-01',42,5871,0,0,0,0,'F',8,0,0,'2014-01-11',2923,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (430,'617871988','10','0243','AUTONAGAR','8500','2013-04-16','Y.NAGESWARA RAO','PLOT NO.79','SARADANAGAR, PH-I','','','1',0.5,'F','T','13b48665','M','2014-01-01',5,'2014-02-12',220000,'2014-01-01',5,2154,0,0,0,0,'F',0,0,32.31,'2014-02-19',630,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (431,'617872071','03','0311','TOLI CHOWK','8500','2013-04-17','SHAIK KHUTBUDDIN AND OTHERS','8-1-346/30/B/1','SABZA COLONY, TOLICHOWKI, HYDE','','','1',0.5,'F','T','12b 10652','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,-0.5,0,0,0,0,'F',0,0,0,'2014-02-15',628,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (432,'617872180','14','1412','HOUSING BOARD','8500','2013-01-10','J.LAXMI','4-6-21/1/29','BABA NAGAR NACHARAM','','','1',0.75,'F','T','01567841','M','2012-12-01',50,'2013-01-10',0,'2012-12-01',0,0,0,0,0,0,'F',10,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (433,'617872759','13','1324','CHANUKYAPURI','8500','2013-04-20','M.RAVI SHANKER','26-104/18','SAFIL GUDA','','','1',0.5,'F','T','13026900','L','2014-01-01',15,'2013-04-20',0,'2013-03-01',0,4375,6275,0,0,0,'F',3,0,65.63,'2013-09-14',1900,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (434,'617872911','14','1423','RAMANTHAPUR(DIV 14)','8500','2013-04-10','D.VENKAT REDDY','3-3-5/11/B/1','BHARATH NAGAR,RAMANTHAPUR','','','1',0.75,'F','T','SLUM','L','2013-11-01',30,'2013-09-16',25000,'2013-08-01',5,29594.9,10995,0,0,0,'F',6,0,439.8,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (435,'617873794','02','0213','MOOSARAMBAGH','8500','2013-04-07','SYED MASOOD MOHIUDDIN','16-11-11/1/3','TEEGALGUDA, SALEEMNAGAR MALAKP','','','2',0.75,'F','T','877877676','M','2013-12-01',32,'2014-01-14',162000,'2013-12-01',32,6200.24,0,0,0,0,'F',16,0,87.78,'2014-01-04',47170,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (436,'617873995','13','1321','DEFENCE COLONY','8500','2013-04-10','RADAPAKA RAMA SWAMY','29-62/2/1','NEW VIDYA NAGAR, NEREDMET','','','1',0.5,'F','T','B-13023916','L','2014-01-01',15,'2013-04-10',0,'2013-03-01',0,6350.3,6275,0,0,0,'F',2,0,94.13,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (437,'617874175','07','0732','TARNAKA','8500','2013-04-20','S.CHANDRAKALA','12-5-74/B/4','VIJAYAPURI','','','1',0.75,'F','T','13 k 3807','M','2014-01-01',16,'2014-02-04',34000,'2014-01-01',16,12391.3,0,0,0,0,'F',5,0,185.87,'2013-10-31',15880,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (438,'617874221','03','0312','GOLCONDA','8500','2013-04-12','MOHAMMED SHAFEEULLAH','13-6-822/A/4','LANGER HOUSE,HYDERABAD','','','1',0.5,'F','T','0253231','M','2013-12-01',7,'2014-01-20',111000,'2013-12-01',7,-622.5,0,0,0,0,'F',3,0,0,'2014-02-18',627,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (439,'617874236','03','0312','GOLCONDA','8500','2013-04-12','SYED ASAD ALI','13-6-825/A/17','MADHI COLONY,LANGER HOUSE HYDE','','','1',0.5,'F','T','10506','L','2013-12-01',15,'2013-04-12',0,'2013-03-01',0,0,5647.5,0,0,0,'F',0,0,0,'2014-02-12',3137.5,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (440,'617874244','15','0614','MADHAPUR','8500','2013-04-19','KASU SRIDEVI','P.NO.30,SY.NO.97/A','GACHIBOWLI VILLAGE','','','1',0.5,'F','T','13B 13005','L','2014-01-01',15,'2013-04-19',0,'2013-03-01',0,6350.3,6275,0,0,0,'F',3,0,94.13,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (441,'617874318','10','0243','AUTONAGAR','8500','2013-04-20','G.BARATHAMMA','H.NO,4-9-315,P NO-1','R T C SUPERVEGAR COLONY, HAYAT','','','1',0.5,'F','T','12-B 560812','M','2014-01-01',15,'2014-02-17',204000,'2014-01-01',15,1883,0,0,0,0,'F',0,0,28.25,'2013-12-16',7065,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (442,'617874418','06','0613','THATTIKHANA','8500','2013-04-17','SMT.B.LAXMI','8-2-293/110/1','S.V.NAGAR,BANJARA HILLS,HYD','','','1',0.5,'F','T','13B 13280','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,155,0,0,0,0,'F',4,0,0,'2014-02-24',1000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (443,'617874472','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-04-18','SIRIGIRI SRINIVAS REDDY','293-A','F.C.I COLONY','','','1',0.75,'F','T','nx-2-2319','M','2014-01-01',33,'2014-02-18',136000,'2014-01-01',33,30383.1,0,0,0,0,'F',4,0,449.39,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (444,'617874486','10','0243','AUTONAGAR','8500','2013-04-21','K.SUDHAKAR REDDY','PLOT NO.44','MEDHANI COLONY,HAYATHNAGAR','','','1',0.5,'F','T','13B-13803','U','2014-01-01',15,'2013-04-21',0,'2013-03-01',0,4275,0,0,0,0,'F',0,0,64.13,'2013-12-11',2000,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (445,'617874662','09','0915','KPHB','8500','2013-04-23','CHERUKURI.CHANDRASEKHAR','16-3-1200/61,P.NO.61','NRSA COLONY,HYDERNAGAR(V)','','','1',0.5,'F','T','7b 12502','L','2013-03-01',15,'0001-01-01',0,'0001-01-01',0,-2918,0,0,0,0,'F',1,0,0,'2014-01-11',213,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (446,'617875254','14','1411','RADHIKA','8500','2013-04-18','V.SRINATH','PLOT NO.68','BHASKAR RAO NAGAR,KAPRA SECUND','','','1',0.5,'F','T','13053926','M','2013-03-01',15,'2013-04-18',0,'2013-03-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (447,'617875313','09','0917','BHAGYANAGAR','8500','2013-04-24','CHITTINENI JANARDHANA RAO','PLOT NO-4','BALAKRISHNA NAGAR, KUKATPALLY','','','1',0.5,'F','T','12A 41731','M','2014-01-01',5,'2014-02-14',80000,'2014-01-01',5,7413.92,0,0,0,0,'F',0,0,110.16,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (448,'617875512','06','0613','THATTIKHANA','8500','2013-04-23','SRICHERUKURISREEDHAR','8-2-686/7/6','ROADNO.12','','','1',0.75,'F','T','na','M','2013-12-01',6,'2014-01-10',48000,'2013-12-01',6,23562.7,0,0,0,0,'F',1,0,338.16,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (449,'617875614','10','0261','L.B.NAGAR','8500','2013-04-20','Y.YADAGIRI REDDY','PLOT NO.6','SREENIVAS COLONY,MANSOORABAD','','','1',0.5,'F','T','13B 13025','R','2014-01-01',18,'0001-01-01',0,'0001-01-01',0,6712.4,0,0,0,0,'F',0,0,100.69,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (450,'617875760','09','0917','BHAGYANAGAR','8500','2013-04-18','P.RAMESH CHANDRA','PLOT NO-8, SY.NO-72','HYDERNAGAR VILLAGE, KUKATPALLY','','','1',0.75,'F','T','NX-12-1095','M','2014-01-01',7,'2014-02-04',403000,'2014-01-01',7,11.35,0,0,0,0,'F',4,0,0,'2014-02-11',1700,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (451,'617875931','03','0311','TOLI CHOWK','8500','2013-04-20','MOHAMMED ABDUL SALEEM SIDDIQUI','8-1-402/7','GULSHAN COLONY, SHAIKPET, HYDE','','','2',0.75,'F','T','13b1317','M','2014-01-01',46,'2014-02-18',345000,'2014-01-01',46,58520,0,0,0,0,'F',16,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (452,'617876055','15','0614','MADHAPUR','8500','2013-04-18','M DURGAIAH','1-94/10','MASEED BANDA,KONDAPUR','','','1',0.5,'F','T','12A 41875','L','2014-01-01',15,'2013-04-18',0,'2013-03-01',0,6284.41,6275,0,0,0,'F',1,0,94.13,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (453,'617876060','15','0614','MADHAPUR','8500','2013-04-18','P.ESWARAIAHAND OTHERS','1-57/304','SREE RAMNAGAR COLONY,KONDAPUR','','','1',0.5,'F','T','13B 3012','L','2014-01-01',15,'2013-04-18',0,'2013-03-01',0,43920,48800,0,0,0,'F',8,0,658.8,'2013-07-25',4880,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (455,'617876788','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-04-16','D.DURGA PRASAD','P NO.316','SREE SRINIVASA PURAM COLONY','','','1',0.5,'F','T','13B.7767','U','2014-01-01',15,'2013-04-16',0,'2013-03-01',0,6275,0,0,0,0,'F',0,0,94.13,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (456,'617876793','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-04-18','B.V.N.CHARYULU','P NO.50,ROAD NO.4','SRI VENKATARAMANA COLONY','','','1',0.5,'F','T','13B 76760','U','2014-01-01',15,'2013-04-18',0,'2013-03-01',0,0,0,0,0,0,'F',2,0,0,'2014-02-13',627.5,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (457,'617876959','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-03-22','K. SURYANARAYANA MURTHY','PLOT NO. 24','AKHILANDESHWARI NAGAR, SAHEB N','','','1',0.5,'F','T','12.B 5288','U','2014-01-01',15,'2013-03-22',0,'2013-02-01',0,1252.5,0,0,0,0,'F',0,0,0,'2013-12-30',5650,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (458,'617876978','10','0243','AUTONAGAR','8500','2013-04-22','J.EASHWARAIAH','P NO,4/A','VENKATESHWARA COLONY,BAGH HAYA','','','1',0.5,'F','T','12-B 53294','U','2014-01-01',15,'2013-04-22',0,'2013-03-01',0,6435.01,0,0,0,0,'F',0,0,94.13,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (459,'617877039','10','0244','ALKAPURI','8500','2013-04-24','S.LAXMI','11-21-1257','NTR NAGAR','','','1',0.5,'F','T','SLUM','U','2014-01-01',15,'2013-04-24',0,'2013-03-01',0,627,0,0,0,0,'F',0,0,0,'2014-01-07',5648,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (460,'617877043','10','0261','L.B.NAGAR','8500','2013-04-26','P.SATYANARAYANA','PLOT NO.23','SRI SAINAGAR COLONY,NAGOLE','','','1',0.5,'F','T','165658','M','2014-01-01',15,'2014-02-06',118000,'2014-01-01',15,3137,0,0,0,0,'F',0,0,47.06,'2013-10-09',3867,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (461,'617877052','10','0243','AUTONAGAR','8500','2013-04-25','KANCHARLA PADMAMMA','PLOT NO.45','MEDHANI COLONY,HAYATHNAGAR,','','','1',0.5,'F','T','13B 3059','U','2014-01-01',15,'2013-04-25',0,'2013-03-01',0,4275,0,0,0,0,'F',0,0,64.13,'2013-12-11',2000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (462,'617877092','10','0243','AUTONAGAR','8500','2013-04-20','DEPA UPENDERREDDY','PLOT NO; 54','RAJA RAJESHWARI COLONY, HAYATH','','','1',0.75,'F','T','NX 12-1632','M','2014-01-01',28,'2014-02-16',135000,'2014-01-01',28,17129,0,0,0,0,'F',3,0,256.94,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (463,'617877181','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-04-20','A. RAJA KARAN REDDY','PLOT NO. 155','F.C.I COLONY','','','1',0.5,'F','T','13-B-67101','U','2014-01-01',17,'2013-04-20',0,'2013-03-01',0,725.8,0,0,0,0,'F',0,0,0,'2014-01-31',5938,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (465,'617877348','09','0911','MOOSAPET','8500','2013-04-12','A.PRABHUGOUD','14-1-89/3/A','GAYATHRINAGAR BORABANDA','','','1',0.5,'F','T','13B 13905','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,1253,0,0,0,0,'F',4,0,0,'2013-12-19',630,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (466,'617877724','10','1031','MARUTHINAGAR (DIV 10)','8500','2013-04-22','G.SWARUPA','PLOT NO-48,  SY.NO:-109&1','CHAITNAYAPURI','','','1',0.5,'F','T','13-b-13815','M','2014-01-01',13,'2014-02-26',38000,'2014-01-01',13,1255,0,0,0,0,'F',0,0,0,'2013-12-17',5020,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (467,'617878070','13','1322','SAINATHPURAM','8500','2013-04-23','PYARI BAI','30-94/36','SANTHOSIMA NAGAR','','','1',0.5,'F','T','10328810','L','2014-01-01',15,'2013-04-23',0,'2013-03-01',0,3275,6275,0,0,0,'F',3,0,49.13,'2013-12-20',3000,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (468,'617878125','09','0917','BHAGYANAGAR','8500','2013-04-23','JAYASREEM','5-3-247/1','VENKAT RAO NAGAR','','','1',0.5,'F','T','7B 1219','R','2014-01-01',21,'0001-01-01',0,'0001-01-01',21,0.4,0,0,0,0,'F',0,0,0,'2014-02-03',919,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (469,'617878132','10','1031','MARUTHINAGAR (DIV 10)','8500','2013-04-10','A.SRINIVAS AND OTHERS','PLOT NO.44','SHAREEF NAGAR(SAINAGAR COLONY)','','','2',0.75,'F','T','13B 1314','M','2014-01-01',18,'2014-02-22',269000,'2014-01-01',18,744,0,0,0,0,'F',6,0,0,'2014-01-25',750,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (470,'617878225','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-04-28','G.BIKSHAMAIAH','PLOT.NO 56','CHAITANYA NAGAR','','','1',0.5,'F','T','13B 3227','L','2014-01-01',16,'2013-04-28',0,'2013-03-01',0,6420.8,6420.8,0,0,0,'F',4,0,96.31,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (471,'617878686','06','0612','BANJARA HILLS','8500','2013-04-27','DR.TARIGOPULA LAKSHMI SAROJINI','6-3-609/114/A','ANAND NAGAR','','','1',0.5,'F','T','NA','M','2014-01-01',12,'2014-02-02',127000,'2014-01-01',12,0.4,0,0,0,0,'F',1,0,0,'2014-02-12',628,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (472,'617878729','09','0915','KPHB','8500','2013-04-24','JAKKULA BABU RAO','PLOT NO,161','NRSA COLONY','','','1',0.5,'F','T','81133','M','2014-01-01',15,'2014-02-15',95000,'2014-01-01',15,6275,0,0,0,0,'F',2,0,94.13,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (473,'617879025','10','1031','MARUTHINAGAR (DIV 10)','8500','2013-04-28','KESTO ASH','PLOT NO 63','PHANIGIRICOLONY,KOTHAPET','','','1',0.75,'F','T','2013.B.2000092','M','2013-12-01',21,'2014-01-20',195000,'2013-12-01',21,15698.7,0,0,0,0,'F',2,0,231.24,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (474,'617879490','09','0917','BHAGYANAGAR','8500','2013-05-02','M.ANAND RAO','4-42-953/P82,P.NO.82','PAPARAYUDU NAGAR,KUKATPALLY','','','1',0.5,'F','T','7B 1201','M','2014-01-01',13,'2014-02-17',123000,'2014-01-01',13,5916.62,0,0,0,0,'F',0,0,88.36,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (475,'617879535','10','0261','L.B.NAGAR','8500','2013-04-25','SSRI K. NARSIMHA REDDY  SON OF SRI AMRUTHA RE','PLOT NO,164, ROCKTWON COL','MANSOORABAD, L.B.NAGAR, HYDERA','','','1',0.5,'F','T','125475','M','2014-01-01',13,'2014-02-19',591000,'2014-01-01',13,35.2,0,0,0,0,'F',2,0,0,'2014-02-26',2000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (476,'617879743','05','0545','ADIKMET DMA-1','8500','2013-05-01','SRI.G.RAGHU RAJU','2-2-25/P/8','D D COLONY,BAGHAMBERPET HYDERA','','','1',0.75,'F','T','B 176752','M','2014-01-01',15,'2014-02-14',185000,'2014-01-01',15,0.4,0,0,0,0,'F',0,0,0,'2014-02-25',1713,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (478,'617879929','06','0611','JUBILEE HILLS','8500','2013-04-28','G.VENU GOPAL KRISHNA','8-2-293/82/A/124/A (PART-','ROAD NO.11,JUBILEE HILLS,HYDER','','','1',0.75,'F','T','NX-12-2865','M','2013-12-01',2,'2014-01-15',115000,'2013-12-01',2,0.1,0,0,0,0,'F',3,0,0,'2014-02-05',8564,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (479,'617880023','15','0614','MADHAPUR','8500','2013-05-01','BUTOOL ANWAR','P.NO.576','SREE RAM NAGAR COLONY,KONDAPUR','','','1',0.5,'F','T','12A 24483','L','2014-01-01',15,'2013-05-01',0,'2013-04-01',0,66748,76725,0,0,0,'F',14,0,985.88,'2014-02-12',11000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (480,'617880038','15','0614','MADHAPUR','8500','2013-05-01','V.HAZARATHAIAH','SY.NO.14','KOTHA GUDA  MADHAPUR','','','1',0.5,'F','T','12A 24012','L','2014-01-01',15,'2013-05-01',0,'2013-04-01',0,-0.5,5647.5,0,0,0,'F',3,0,0,'2014-02-20',1883,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (481,'617880441','10','0243','AUTONAGAR','8500','2013-05-01','S.JOHN EDWARD','4-12-459','HIGH COURT COLONY,STREAT NO.3,','','','1',0.5,'F','T','13B 32223','M','2014-01-01',15,'2014-02-23',115000,'2014-01-01',15,0.5,0,0,0,0,'F',0,0,0,'2014-02-25',1882,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (482,'617880553','03','0311','TOLI CHOWK','8500','2013-05-02','MOHD HABEEBUR RAHMAN','HNO.8-1-332/3/A/144','ARVIND NAGAR,SHAIKPET','','','1',0.5,'F','T','13b 3342','M','2014-01-01',16,'2014-02-18',131000,'2014-01-01',16,28159.6,0,0,0,0,'F',5,0,412.76,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (483,'617880570','03','0312','GOLCONDA','8500','2013-05-02','T . NAVEEN GOUD','9-1-369/20','JANMABHUMINAGER','','','1',0.5,'F','T','13B 92461','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,627.39,0,0,0,0,'F',2,0,0,'2014-01-23',5086,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (484,'617880699','10','0244','ALKAPURI','8500','2013-05-01','CH.LALITHA','PLOT NO.41 EAST PART','VIMALANANDA COOP.HOUSING SOCIE','','','1',0.5,'F','T','13j687746','M','2014-01-01',15,'2014-02-05',30000,'2014-01-01',15,1285.38,0,0,0,0,'F',3,0,18.19,'2014-01-17',1492,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (485,'617880848','15','1513','GACHIBOWLI (DIV 15)','8500','2013-05-01','RAVULAKOL VEERAIAH AND OTHER\'S','2-9/7','KHAJAGUDA (V) SERILINGAMPALLY','','','1',0.5,'F','T','13b 3276','L','2013-08-01',15,'2013-05-01',0,'2013-04-01',0,0,2510,0,0,0,'F',2,0,0,'2013-09-28',2510,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (486,'617881307','06','0621','SOMAJIGUDA','8500','2013-05-02','N.V.MAHESH','HNO.6-3-1216/138','METHODIST COLONY GREENLANDS','','','1',0.5,'F','T','260512021','R','2014-01-01',18,'0001-01-01',0,'0001-01-01',0,772.9,0,0,0,0,'F',1,0,0,'2014-01-18',773,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (487,'617881313','06','0624','S.R.NAGAR','8500','2013-05-02','V. RAMA KRISHNA RAO','7-1-396/B/9 & 13/402','BALKAMPET, SR NAGAR','','','2',0.75,'F','T','nx12-2910','M','2014-01-01',15,'2014-02-10',80000,'2014-01-01',15,10937.5,0,0,0,0,'F',15,0,0,'2014-02-21',5500,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (488,'617881707','10','0261','L.B.NAGAR','8500','2013-05-02','CHAITANYA EDUCATIONAL SOCIETY','PLOT NO.1,ROAD NO.1','PRAGATHI NAGAR,MANSOORABAD','','','1',0.5,'F','T','13B 2980','M','2014-01-01',21,'2014-02-12',162000,'2014-01-01',21,2103.2,0,0,0,0,'F',0,0,29.4,'2014-02-01',5000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (490,'617881936','15','0614','MADHAPUR','8500','2013-05-01','D.VIKRAMADITYA','P.NO.44/A','SRI RAMNAGARL,KONDAPUR','','','1',0.5,'F','T','12a 24487','L','2014-01-01',15,'2013-05-01',0,'2013-04-01',0,38965.2,38452.5,0,0,0,'F',7,0,576.79,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (491,'617882039','01','0121','DHOOD BOWLI','8500','2013-05-04','HARI KISHAN AGARWAL','19-1-912/A/5/A','MURLI NAGAR,BAHADURPURA','','','1',0.5,'F','T','94542','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,1010.5,0,0,0,0,'F',0,0,0,'2014-01-21',1500,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (494,'617883013','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-04-01','V.D.PRASADA RAO GUDIPUDI','PLOT NO.315','TAPOVAN COLONY,SAROORNAGAR','','','1',0.5,'F','T','12b 45666','M','2014-01-01',13,'2014-02-15',146000,'2014-01-01',13,1875,0,0,0,0,'F',1,0,28.13,'2013-12-11',4400,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (495,'617883593','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-05-04','RAPUR JHANSI','PLOT NO.15','HATHINAPURAM EAST','','','1',0.5,'F','T','06061371','L','2014-01-01',16,'2013-05-04',0,'2013-04-01',0,4293.3,5793.3,0,0,0,'F',1,0,64.4,'2013-12-04',1500,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (496,'617883660','10','0243','AUTONAGAR','8500','2013-05-04','A . RAMANJANEYULU','PLOT NO .31','SRE PADMAVATHI COLONY','','','1',0.5,'F','T','12B 53528','U','2014-01-01',15,'2013-05-04',0,'2013-04-01',0,2647.5,0,0,0,0,'F',0,0,39.71,'2014-01-15',1000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (499,'617883825','06','0624','S.R.NAGAR','8500','2013-05-09','P.S TOWERS OWNERS WELFARE ASSOCIATION','H.NO 7-1-621/255 (54/3RT)','SANJEEVAREDDY NAGAR','','','2',0.75,'F','T','NX-13-5068','M','2014-01-01',23,'2014-02-08',253000,'2014-01-01',23,0,0,0,0,0,'F',20,0,0,'2014-02-15',7310,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (500,'617883862','10','0241','SAROORNAGAR','8500','2013-05-09','AMBALALL PATEL','PLOT NO.19','BAHADUR GUDA,DHANAPURAM','','','1',0.5,'F','T','13B 1942','M','2014-01-01',15,'2014-02-04',133000,'2014-01-01',15,-2.5,0,0,0,0,'F',2,0,0,'2014-02-26',630,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (501,'617884165','03','0333','VIJAYNAGAR COLONY','8500','2013-05-07','P.RAMANANDA REDDY','10-3-311/11','HUMAYAN NAGAR','','500030','2',1.5,'F','T','13-N-10115','R','2014-01-01',182,'0001-01-01',0,'0001-01-01',182,-8,0,0,0,0,'F',7,0,0,'2014-02-15',2890,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (502,'617885168','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-04-28','K. VEERA REDDY','PLOT NO. 30','HASTINAPURAM EAST, VANASTHALIP','','','1',0.5,'F','T','2012x 2018592','U','2014-01-01',15,'2013-04-28',0,'2013-03-01',0,6275,0,0,0,0,'F',0,0,94.13,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (503,'617885637','14','1422','UPPAL','8500','2013-05-08','SRIMAT TIRUMALANARASIMHACHARY','PLOT NO.269  PART & 270','CHILUKANAGAR','','500039','1',0.5,'F','T','SLUM','M','2013-04-01',15,'2013-05-08',0,'2013-04-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (504,'617885642','05','0511','GANDHINAGAR','8500','2013-04-26','KONAIN TOWERS','HNO.1-1-536,1-1-537,1-1-5','GANDHINAGAR,BAKARAM','','','2',1,'F','T','13b2200','M','2014-01-01',85,'2014-02-05',936000,'2014-01-01',85,27363,0,0,0,0,'F',25,0,410.45,'2013-12-02',18300,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (505,'617886130','07','0714','SRINIVAS NAGAR','8500','2013-05-10','TIRUMALA CONSTRUCTIONS GPA T.K.NARESH','6-1-132/30/2/A,6-1-132/30','PADMARAO NAGAR','','','2',0.75,'F','T','13B 1753','M','2014-01-01',20,'2014-02-02',180000,'2014-01-01',20,0.5,0,0,0,0,'F',9,0,0,'2014-02-22',300,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (506,'617886140','07','0724','SEETHAPALMANDI','8500','2013-05-10','NAMALA MURALIDHAR','12-10-587/35/2','SEETHAPHAL MANDI','','','1',0.5,'F','T','12B 1810','R','2014-01-01',16,'0001-01-01',0,'0001-01-01',16,1980.9,0,0,0,0,'F',0,0,29.71,'2014-01-08',700,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (508,'617886626','06','0611','JUBILEE HILLS','8500','2013-05-04','SMT.PEMMASANI LALITHA KUMARI','PLOT NO.127','NAVA NIRMAN NAGAR,RD NO.71, JU','','','1',0.75,'F','T','NX 12.2731','M','2014-01-01',22,'2014-02-06',217000,'2014-01-01',22,1109.3,0,0,0,0,'F',3,0,0,'2013-12-29',2960,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (509,'617886752','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-05-04','M. LAXMAN NAIK','PLOT NO. 191','F.C.I COLONY','','','1',0.75,'F','T','13B 1298','L','2013-12-01',50,'2013-05-04',0,'2013-04-01',0,25108,25108,0,0,0,'F',0,0,376.62,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (510,'617887633','03','0311','TOLI CHOWK','8500','2013-05-03','ADNANAHMED','9-4-132','MAHBOOB GARDEN TOLICHOWKI','','500008','1',0.5,'F','T','13B 3715','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,5713.39,0,0,0,0,'F',1,0,84.71,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (512,'617887716','03','0311','TOLI CHOWK','8500','2013-05-13','SYED AJAZ HUSSAIN','HNO.8-1-402/A/C/23','MINI GULSHAN COLONY SHAIKPET','','','1',0.5,'F','T','89699','M','2013-06-01',8,'2013-07-17',15000,'2013-06-01',8,1255,0,0,0,0,'F',4,0,18.83,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (513,'617888052','10','0243','AUTONAGAR','8500','2013-05-13','P.KONDAL REDDY','PLOT NO.33','SHARADA NAGAR,VANASTHALIPURAM','','','1',0.5,'F','T','13B 3097','M','2014-01-01',9,'2014-02-11',65000,'2014-01-01',9,-0.5,0,0,0,0,'F',0,0,0,'2014-02-27',628,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (514,'617888159','09','0917','BHAGYANAGAR','8500','2013-05-13','P.SANGEETHA','5-3-369, PLOT NO.1','SRI KRISHNA NAGAR, KUKATPALLY','','','1',0.5,'F','T','NX-11-1132','M','2014-01-01',10,'2014-02-21',115000,'2014-01-01',10,25584.2,0,0,0,0,'F',5,0,382.39,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (515,'617888552','05','0541','NARAYANGUDA','8500','2013-04-10','ATIN KUMAR JAISWAL','3-5-996','5','','500029','1',0.5,'F','T','2567','M','2014-01-01',68,'2014-02-11',798000,'2014-01-01',68,39851,0,0,0,0,'F',6,0,571.38,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (516,'617888571','05','0513','BOATS CLUB','8500','2012-12-15','B V RAMESH AND OTHERS','1-4-880/2/16/B & 1,1-4-88','SBH OFFICER COLONY NEW BAKARAM','','','2',0.75,'F','T','13a6693','M','2014-01-01',48,'2014-02-23',260000,'2014-01-01',48,51423.1,0,0,0,0,'F',9,0,736.85,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (518,'617888944','10','0243','AUTONAGAR','8500','2013-05-10','BANDA  PADMA','PLOT NO .130','JUDGES COLONY AUTO NAGAR','','','1',0.5,'F','T','13B 13876','M','2014-01-01',15,'2014-02-23',101000,'2014-01-01',15,627.5,0,0,0,0,'F',0,0,0,'2014-02-15',627,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (519,'617889082','03','0311','TOLI CHOWK','8500','2013-05-16','SHAIK KHADER PASHA','8-1-299/20','AL-HAMRA COLONY SHAIKPET','','','1',0.5,'F','T','5665','M','2014-01-01',7,'2014-02-17',20000,'2014-01-01',7,5685.16,0,0,0,0,'F',3,0,84.71,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (520,'617889097','03','0311','TOLI CHOWK','8500','2013-05-16','S. DEVASENA REDDY','8-1-299/A/93','VETARINARY COLONY, SHAIKPET, H','','','1',0.5,'F','T','13B 44097','M','2014-01-01',38,'2014-02-24',138000,'2014-01-01',38,2069.3,0,0,0,0,'F',2,0,0,'2014-01-27',3765,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (521,'617889126','02','0213','MOOSARAMBAGH','8500','2013-05-10','MR.GUJAR DEVI DUTT','HNO.16-11-20/6/6','SALEEM NAGAR MOOSARAMBAGH','','','2',0.75,'F','T','13 B 1015','R','2014-01-01',50,'0001-01-01',0,'0001-01-01',0,18619.7,0,0,0,0,'F',5,0,276.08,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (522,'617889243','09','0912','BALANAGAR','8500','2013-05-14','J.BALAIAH','HNO.7-8-174/1/A','GOUTHAM NAGAR BALANAGAR','','','1',0.5,'F','T','12B 7623','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,27517.5,0,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (523,'617889479','15','0614','MADHAPUR','8500','2013-05-15','CHAKALI RAJU','1-59/14/C','MASEED BANDA,KONDAPUR','','','1',0.5,'F','T','13B 13964','M','2014-01-01',30,'2014-02-08',92000,'2014-01-01',30,0.5,0,0,0,0,'F',3,0,0,'2014-02-14',2611,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (524,'617889484','15','0614','MADHAPUR','8500','2013-05-15','ANASUYA','1-109/B/4','BIKSHAPATHINAGAR,KONDAPUR','','','1',0.5,'F','T','13B 19809','L','2014-01-01',15,'2013-05-15',0,'2013-04-01',0,5703.98,5647.5,0,0,0,'F',1,0,84.71,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (525,'617889587','15','0614','MADHAPUR','8500','2013-05-16','M MALLESH','1-59/14/B','MASEED BANDA,KONDAPUR','','','1',0.5,'F','T','13B 3967','M','2014-01-01',30,'2014-02-03',90000,'2014-01-01',30,6498.87,0,0,0,0,'F',1,0,95.65,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (526,'617889635','15','0614','MADHAPUR','8500','2013-05-12','B. YADAIAH','P.NO. 23, H. NO. 1-98/6/3','CYBER HILLS COLONY, MADHAPUR','','','1',0.5,'F','T','13B 13897','L','2013-10-01',15,'2013-05-12',0,'2013-04-01',0,0,3765,0,0,0,'F',4,0,0,'2013-12-11',1883,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (527,'617889694','06','0611','JUBILEE HILLS','8500','2013-05-14','P.UMA','PLOT NO.508','ROAD NO.33,JUBILEE HILLS,HYD','','','1',0.5,'F','T','13B 19815','M','2014-01-01',19,'2014-02-09',110000,'2014-01-01',19,4041.16,0,0,0,0,'F',2,0,59.39,'2013-12-03',2320,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (528,'617890142','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-05-14','DEPA  KESHAVA  REDDY','PLOT NO . 58 PHASE II','F C I  COLONY','','','1',0.5,'F','T','13B5143','M','2014-01-01',14,'2014-02-18',167000,'2014-01-01',14,2751.3,0,0,0,0,'F',0,0,41.27,'2013-12-14',4500,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (529,'617890156','10','0243','AUTONAGAR','8500','2013-05-15','MALA  VASANTHAMMA','PLOT NO .79 MIDDLE PART','VEERABHADRA NAGAR','','','1',0.5,'F','T','13b 19594','M','2014-01-01',8,'2014-02-19',76000,'2014-01-01',8,0,0,0,0,0,'F',0,0,0,'2014-02-24',1255.5,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (530,'617890161','10','0243','AUTONAGAR','8500','2013-05-15','BADDAM  RANGA  REDDY','H NO .4-7-146/35/36','SHANTHIVANAM  TOWNSHIP','','','1',0.5,'F','T','13-b-19592','U','2014-01-01',15,'2013-05-15',0,'2013-04-01',0,5647.5,0,0,0,0,'F',0,0,84.71,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (531,'617890484','15','0614','MADHAPUR','8500','2013-05-06','MSRS.VAISHNAVI CONSTRUCTIONS','PLOT NO.49PART,50,60,61','KONDAPUR,SERILINGAMPALLY,MADAP','','','2',0.75,'F','T','13-b-1251','M','2014-01-01',80,'2014-02-18',200000,'2014-01-01',80,34929.2,0,0,0,0,'F',10,0,512.39,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (532,'617890893','10','0261','L.B.NAGAR','8500','2013-05-18','K.RAMULU','3-7-435/119','COSMOPOLITAN COLONY,MANSOORABA','','','1',0.5,'F','T','13j12369','M','2013-12-01',4,'2014-01-15',237000,'2013-12-01',4,-24.2,0,0,0,0,'F',0,0,0,'2014-01-09',2650,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (533,'617890938','14','1411','RADHIKA','8500','2013-05-19','P.V.NAVEEN KUMAR','PLOT NO:106-C','ESHWARIPURI COLONY','','','1',0.5,'F','T','13B-15067','M','2013-04-01',15,'2013-05-19',0,'2013-04-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (534,'617891197','10','0243','AUTONAGAR','8500','2013-05-18','KALLEM  BUCHI  REDDY','4-7-84/4/2','PADMAVATHI COLONY  PHII','','','1',0.5,'F','T','12 B 40440','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,1882.5,0,0,0,0,'F',0,0,28.24,'2013-11-17',625,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (535,'617891320','09','0911','MOOSAPET','8500','2013-05-20','V. RADHA','15-21-150/111 PLOT NO 29','BALAJI NAGAR, KUKATPALLY MOOSA','','','1',0.75,'F','T','13B 1784','M','2014-01-01',44,'2014-02-14',245000,'2014-01-01',44,10272.4,0,0,0,0,'F',8,0,146.4,'2014-02-13',34160,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (536,'617891353','09','0915','KPHB','8500','2013-05-19','KUNA SATYANARAYANA GOUD','PLOT. NO.32/12','S.P. NAGAR','','','1',0.5,'F','T','3793','M','2014-01-01',15,'2014-02-15',90000,'2014-01-01',15,6072.99,0,0,0,0,'F',1,0,88.36,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (537,'617891712','04','0431','RED HILLS HIGH LEVEL','8500','2013-05-19','MRS.AFROZE KHAN','11-4-515/1','BAZAAR GHAT','','','1',0.5,'F','T','12A 11161','L','2013-12-01',15,'2013-07-09',30000,'2013-06-01',15,0,3765,0,0,0,'F',0,0,0,'2014-02-12',615,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (538,'617891879','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-05-21','K . SRINIVASA RAO','PLOT NO .141','SRINIVASAPURAM COLONY','','','1',0.5,'F','T','13B 13482','U','2014-01-01',15,'2013-05-21',0,'2013-04-01',0,552.5,0,0,0,0,'F',0,0,0,'2014-02-09',640,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (539,'617892163','09','0915','KPHB','8500','2013-05-19','SRI HARASHA CONSTRUCTIONS','PLOT NO. 27 & 28','PHASE-V','','','2',0.75,'F','T','NX12 2806','M','2014-01-01',15,'2014-02-20',159000,'2014-01-01',15,32985,0,0,0,0,'F',10,0,494.78,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (540,'617892178','09','0915','KPHB','8500','2013-05-20','SRI HARASHA  CONSTRUCTIONS','PLOT NO.25 & 26','PHASE-V','','','2',0.75,'F','T','NX 12 2117','M','2014-01-01',8,'2014-02-12',135000,'2014-01-01',8,32985,0,0,0,0,'F',10,0,494.78,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (541,'617892185','09','0911','MOOSAPET','8500','2013-05-21','G.NAGA PRASANNA','PLOT NO.410','GAYATRI NAGAR ALLAPUR KUKATPAL','','','1',0.75,'F','T','88163','M','2014-01-01',25,'2014-02-20',72000,'2014-01-01',25,4345.63,0,0,0,0,'F',7,0,59.44,'2014-02-04',9490,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (542,'617892220','09','0917','BHAGYANAGAR','8500','2013-05-17','T.SRINIVASA RAO','P.NO.10/B','AS RAJU NAGAR,NIZAMPET','','','1',0.5,'F','T','XL 487486','U','2014-01-01',18,'2013-05-17',0,'2013-04-01',0,0,0,0,0,0,'F',3,0,0,'2014-02-15',773.3,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (543,'617892586','03','0312','GOLCONDA','8500','2013-05-22','MOHAMMED HUSSAIN','9-1-1/81/1/1','HASHAM NAGAR,LANGER HOUSE,BAPU','','','1',0.5,'F','T','12206682911','M','2013-12-01',16,'2014-01-20',91000,'2013-12-01',16,3.25,0,0,0,0,'F',0,0,0,'2014-02-10',1300,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (544,'617892797','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-05-21','C. SHESHIPAL REDDY','PLOT NO. 137, ROAD NO-7','VENKATA RAMANA COLOY, VANASTHA','','','1',0.5,'F','T','13 B 19394','U','2014-01-01',15,'2013-05-21',0,'2013-04-01',0,5647.5,0,0,0,0,'F',0,0,84.71,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (546,'617892892','06','0611','JUBILEE HILLS','8500','2013-05-19','SRI M.RAGHUNADHA REDDY','8-2-293/82/A/512/Z & 512/','ROAD NO.29,SHAIKPET,HAKIMPET,J','','','1',0.5,'F','T','13B 19794','M','2014-01-01',15,'2014-02-12',107000,'2014-01-01',15,-3.1,0,0,0,0,'F',1,0,0,'2014-02-25',3768,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (547,'617893039','06','0611','JUBILEE HILLS','8500','2013-05-22','AKEPATIMANOGNA','PLOT NO :321-A23','ROAD NO:25(BRANCH)','','','1',0.75,'F','T','NX-12-2508','M','2013-12-01',11,'2014-01-15',126000,'2013-12-01',11,12042.8,0,0,0,0,'F',1,0,179.87,'2013-07-29',1890,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (548,'617893165','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-05-18','KARUPARTI RAJENDER PRASAD','PLOT NO. 624','SKD NAGAR COLONY','','','1',0.5,'F','T','13B 19830','U','2014-01-01',15,'2013-05-18',0,'2013-04-01',0,0,0,0,0,0,'F',0,0,0,'2014-02-16',627.5,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (549,'617893170','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-05-13','N..VENKATESHAM','PLOT.NO.61, NAGARJUNA COL','HASTINAPURAM, N.S.ROAD','','','1',0.75,'F','T','13B 1280','L','2014-01-01',32,'2014-01-06',172000,'2013-12-01',32,-17.9,1712.9,0,0,0,'F',4,0,0,'2014-02-26',1727,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (550,'617893243','10','0261','L.B.NAGAR','8500','2013-05-17','RAFATHUNNISA  BEGUM','5-5-962//12/13 PLOT NO .1','HAKEEMA BAD COLONY  CHINTALKUN','','','1',0.5,'F','T','13B 19363','L','2014-01-01',17,'2013-05-17',0,'2013-04-01',0,5957.85,5890.5,0,0,0,'F',4,0,88.36,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (551,'617893292','10','0243','AUTONAGAR','8500','2013-05-22','SRI M.A. GAFOOR  SON OF M.A. RAHOOF','PLOT NO.102, ANMAGAL, HAY','RTC COLONY, HYDERABAD','','','1',0.5,'F','T','13B 13185','L','2013-11-01',15,'2013-05-22',0,'2013-04-01',0,4392.5,4392.5,0,0,0,'F',0,0,65.89,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (552,'617893598','10','0244','ALKAPURI','8500','2013-05-01','S . YASHODA','PLOT NO .16 SY .NO 9/1/B','HARIPURI COLONY ALKAPURI','','','2',0.75,'F','T','2013 16B64','M','2014-01-01',13,'2014-02-02',120000,'2014-01-01',13,13608,0,0,0,0,'F',8,0,189.86,'2014-02-02',4879,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (553,'617894048','09','0913','HASMATHPET','8500','2013-05-21','G.NARSIMHA YADAV','PLOT NO.24,SY.NO.8,39&40,','OLD BOWENPALLY,KUKATPALLY(C)BA','','','2',0.75,'F','T','12x-1481','M','2014-01-01',11,'2014-02-21',230000,'2014-01-01',11,26424,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (554,'617894053','09','0913','HASMATHPET','8500','2013-05-20','K.RAJI REDDY','1-8 & 1-8/1 PLOT NO 21 PA','OLD BOWENPALLY','','','1',0.5,'F','T','12 b-26281','M','2013-04-01',15,'2013-05-20',0,'2013-04-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (555,'617894141','09','0913','HASMATHPET','8500','2013-05-21','G.RAMESH AND OTHERS','8-7-178/11/41,(OLD NO:7-1','SWARNADAMA NAGAR','','','2',0.75,'F','T','12X 14681','M','2014-01-01',20,'2014-02-18',225000,'2014-01-01',20,19863,0,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (556,'617894516','09','0917','BHAGYANAGAR','8500','2013-05-21','K.PRABHAKAR RAO','4-32-1/99, SY NO.92 TO 10','SAPTAGIRI COLONY, BAGH AMEERI','','','1',0.5,'F','T','1353975','M','2014-01-01',12,'2014-02-07',117000,'2014-01-01',12,4520,0,0,0,0,'F',0,0,0,'2014-01-23',500,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (557,'617894528','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-05-18','B.RAGHAVA CHARY','PLOT NO.93','ANUPAMA NAGAR COLONY,HASTINAPU','','','1',0.5,'F','T','13b 19365','M','2014-01-01',11,'2014-02-20',163000,'2014-01-01',11,2673,0,0,0,0,'F',1,0,39.11,'2013-11-22',4848,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (558,'617894548','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-05-20','SMT PALLA SUSHMITHA','PLOT NO.272,SY.NO.59','TEACHERS COLONY,KARMANGHAT','','','1',0.5,'F','T','13B13870','L','2014-01-01',36,'2013-12-07',251000,'2013-11-01',36,16930.8,3782.2,0,0,0,'F',2,0,253.96,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (559,'617894553','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-05-18','S. SWAROOPA','PLOT NO. 121 & 122, NOTHR','MADHAVANA NAGAR, KARMANGHAT, S','','','1',0.5,'F','T','13B19432','U','2014-01-01',15,'2013-11-19',65000,'2013-10-01',11,0.5,0,0,0,0,'F',2,0,0,'2014-02-14',1257,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (561,'617895089','10','0261','L.B.NAGAR','8500','2013-05-10','A.SHRUTHI','PLOT NO.168','VIJAYASREE COLONY,MANSOORABAD','','','1',0.75,'F','T','NX 12 3402','M','2014-01-01',15,'2014-02-12',180000,'2014-01-01',15,-0.4,0,0,0,0,'F',4,0,0,'2014-02-12',580,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (563,'617895525','07','0714','SRINIVAS NAGAR','8500','2013-05-23','P.KAVITHA','12-11-1254/A','BOUDHANAGAR','','','1',0.5,'F','T','b 13043821','M','2013-04-01',15,'2013-05-23',0,'2013-04-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (564,'617895548','10','0243','AUTONAGAR','8500','2013-05-17','SHAIK  DADA  SAHEB','PLOT NO .2','SHANTHIVANAM  TOWNSHIP','','','1',0.5,'F','T','13b 13202','U','2014-01-01',15,'2013-05-17',0,'2013-04-01',0,5647.5,0,0,0,0,'F',0,0,84.71,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (566,'617896917','13','1324','CHANUKYAPURI','8500','2013-05-11','DURGAM LAVANYA','PLOT NO 7(PART) BE SIDE H','UPPERGUDA,MALKAJGIRI','','','1',0.75,'F','T','88248','L','2014-01-01',50,'2013-05-11',0,'2013-04-01',0,24387.5,49387.5,0,0,0,'F',9,0,365.81,'2014-02-15',25000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (567,'617897048','06','0611','JUBILEE HILLS','8500','2013-05-25','BOLLINENI HARI BABU NAIDU','8-2-293/82/JIII/124','RDNO 74','','','1',0.75,'F','T','NX-122717','M','2014-01-01',43,'2014-02-19',210000,'2014-01-01',43,2514.42,0,0,0,0,'F',1,0,0,'2014-01-24',4851,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (568,'617897068','06','0611','JUBILEE HILLS','8500','2013-05-25','MR.ANAND SAGAR','8-2-293/82/BH/PLOT NO. 14','JUBILEEHILLS','','','1',0.5,'F','T','13B 19504','M','2014-01-01',27,'2014-02-12',239000,'2014-01-01',27,0.4,0,0,0,0,'F',1,0,0,'2014-02-22',1213,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (569,'617897225','05','0513','BOATS CLUB','8500','2013-05-20','G.SUDHAKAR','1-3-51','KAVADIGUDA HYDERABAD','','','1',0.5,'F','T','B12042554','R','2014-01-01',17,'0001-01-01',0,'0001-01-01',17,898.8,0,0,0,0,'F',0,0,0,'2014-02-19',2000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (571,'617897258','05','0522','AZAMABAD','8500','2013-05-20','B.RAJENDER','HNO.1-7-513/1/5/1','PAVITHRA NAGAR DAYARA MARKET A','','','1',0.5,'F','T','b76764','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,-0.5,0,0,0,0,'F',0,0,0,'2014-02-13',628,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (572,'617897278','05','0522','AZAMABAD','8500','2013-03-25','A. NARAHARI','1-9-377/1','ADIKMET','','','1',0.5,'F','T','','R','2014-01-01',16,'0001-01-01',0,'0001-01-01',0,2.7,0,0,0,0,'F',0,0,0,'2014-02-11',680,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (573,'617897299','02','0222','ASMANGARH','8500','2013-06-01','K.RADHA','16-1-30/D','LOKAYUKTHA COLONY,SAIDABAD','','','1',0.5,'F','T','13-A 15999','L','2013-11-01',18,'2013-06-01',0,'2013-05-01',0,-2.38,4494,0,0,0,'F',0,0,0,'2013-12-07',4550,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (574,'617898148','06','0624','S.R.NAGAR','8500','2013-05-31','S DAMODAR','7-1-621/351/387/L2/2RT','SR NAGAR','','','1',0.75,'F','T','13B 1759','M','2013-12-01',30,'2014-01-20',152000,'2013-12-01',30,5.2,0,0,0,0,'F',4,0,0,'2014-02-11',1710,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (575,'617898154','06','0612','BANJARA HILLS','8500','2013-05-31','SMT.KIRANJEET KAUR','HNO.8-2-248/1/7 PLOT NO 5','PUNJAGUTTA BANJARAHILLS','','','2',0.75,'F','T','NX-12-2306','M','2013-11-01',1,'2013-12-04',5000,'2013-11-01',1,0.5,0,0,0,0,'F',7,0,0,'2013-12-20',18000,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (576,'617898195','13','1324','CHANUKYAPURI','8500','2013-05-22','B SRINIVAS GOUD','10-203(P)PLOT.NO.18(P)','VENKATESHWARA NAGAR','','','1',0.5,'F','T','13028799','L','2014-01-01',15,'2013-05-22',0,'2013-04-01',0,5647.5,5647.5,0,0,0,'F',0,0,84.71,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (577,'617898345','07','0733','LALAPET','8500','2013-06-01','T.MANJULA','12-14-55','VINOBA NAGAR','','','1',0.5,'F','T','12B 6879','L','2013-12-01',15,'2013-06-01',0,'2013-05-01',0,0.5,4392.5,0,0,0,'F',0,0,0,'2014-02-06',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (578,'617898434','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-05-23','D.SABITHA','PLOT NO.2','SRI VENKATARAMANA COLONY (WEST','','','1',0.5,'F','T','12 B 48210','U','2014-01-01',15,'2013-05-23',0,'2013-04-01',0,5647.5,0,0,0,0,'F',0,0,84.71,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (579,'617898839','15','0614','MADHAPUR','8500','2013-06-01','PUTTA VASAVI','2-56/7/1/1','CHANDRA NAIK THANDA,KHANAMMET','','','1',0.5,'F','T','13B 2974','L','2013-10-01',15,'2013-06-01',0,'2013-05-01',0,0,3137.5,0,0,0,'F',1,0,0,'2014-02-11',1882.5,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (580,'617898844','15','0614','MADHAPUR','8500','2013-06-01','M BALARAJU','1-54/2/1','MASEED BANDA,KONDAPUR','','','1',0.5,'F','T','13B 13654','M','2014-01-01',5,'2014-02-05',45000,'2014-01-01',5,5123.53,0,0,0,0,'F',3,0,75.3,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (581,'617898859','15','0614','MADHAPUR','8500','2013-06-01','A.SRINIVAS','1-98/21/B/1','MADHAPUR VILLAGE','','','1',0.5,'F','T','13b34243','M','2014-01-01',12,'2014-02-10',24000,'2014-01-01',12,630,0,0,0,0,'F',3,0,0,'2014-02-04',3760,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (582,'617899504','04','0421','GODE-KI-KABAR','8500','2013-05-20','ASHOK  KUMAR  AGARWAL','14-2-413,414,419','RAZZAK PURA','','','1',0.5,'F','T','11B 14146','L','2014-01-01',18,'2013-11-05',108000,'2013-10-01',18,6959.7,2319.9,0,0,0,'F',2,0,104.4,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (583,'617900877','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-05-21','D.SRAVANI','PLOT NO.9','KRANTHI HILLS,VANASTHALIPURAM','','','1',0.5,'F','T','13.B.3358','U','2014-01-01',15,'2013-05-21',0,'2013-04-01',0,-2.5,0,0,0,0,'F',0,0,0,'2014-02-21',640,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (585,'617901301','03','0311','TOLI CHOWK','8500','2013-06-05','MOHAMMED QAYYAM UDDIN','8-1-398/10','I.A.S COLONY','','','1',0.5,'F','T','12B 10323','M','2013-12-01',13,'2014-01-06',181000,'2013-12-01',13,8648.44,0,0,0,0,'F',0,0,128.22,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (586,'617901368','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-06-03','SWARNA VENKATESWARLU','PLOT NO.198','F C I COLONY, PH-I, VANASTHALI','','','1',0.5,'F','T','13B 63447','M','2014-01-01',14,'2014-02-17',129000,'2014-01-01',14,1319.77,0,0,0,0,'F',0,0,18.84,'2014-01-21',4250,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (587,'617901697','07','0711','HUSSAINSAGAR','8500','2013-05-29','SRI N.S.SREE RAMULU','7-1-473 TO 477(OLD NO.412','MOOSA KHAN BAZAR,MONDA MARKET,','','','2',0.75,'F','T','13A 1104','M','2014-01-01',30,'2014-02-05',361000,'2014-01-01',30,0.5,0,0,0,0,'F',9,0,0,'2014-02-26',3300,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (588,'617901775','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-06-01','SUKKALA SREENIVASA RAO','PLOT NO.106 & 107','INDRAPRASTHA COLONY,HASTINAPUR','','','1',0.5,'F','T','13B 13877','M','2013-12-01',14,'2014-01-14',39000,'2013-12-01',14,-2.5,0,0,0,0,'F',4,0,0,'2014-02-07',630,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (589,'617901993','06','0611','JUBILEE HILLS','8500','2013-06-06','RAJAMANIKANAPARTHY','8-2-293/82/NG/PLOT 18','HUDA LAYOUT','','500033','1',0.75,'F','T','13B 1848','M','2014-01-01',34,'2014-02-17',262000,'2014-01-01',34,-0.44,0,0,0,0,'F',0,0,0,'2014-02-21',9120,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (590,'617902580','10','0261','L.B.NAGAR','8500','2013-06-05','SMT DEEPA PRAMEELA','HNO.2-3-438/19,PLOT NO.19','SAINAGAR COLONY,ROAD NO.3,NAGO','','','1',0.5,'F','T','215541','M','2014-01-01',5,'2014-02-15',15000,'2014-01-01',5,5142.37,0,0,0,0,'F',0,0,75.3,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (591,'617902676','09','0917','BHAGYANAGAR','8500','2013-06-07','P.RAVINDRANATH','22-189/A/1,P.NO.189','ARUNA COOPERATIVE HOUSING SOCI','','','1',0.5,'F','T','000','M','2014-01-01',21,'2014-02-05',99000,'2014-01-01',21,18.6,0,0,0,0,'F',3,0,0,'2014-02-20',900,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (592,'617902724','09','0917','BHAGYANAGAR','8500','2013-06-04','P.SWAROOPA','PLOT NO-79','PAPARAYUDU NAGAR, KUKATPALLY','','','1',0.5,'F','T','4303','M','2014-01-01',10,'2014-02-17',69000,'2014-01-01',10,620,0,0,0,0,'F',1,0,0,'2014-02-04',4400,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (593,'617902821','14','1411','RADHIKA','8500','2013-06-10','CH. MOHAN RAO','1-4-200/118-A, PLOTNO 118','ESHWARIPURI COLONY,  OUT','','','1',0.5,'F','T','13A 12566','M','2013-05-01',15,'2013-06-10',0,'2013-05-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (594,'617903283','12','0921','SHAPOORNAGAR','8500','2013-06-09','SHAMEEM BEGUM','34-10','SHAPUR NAGAR G R ROAD QUTUBULL','','','2',0.75,'F','T','88165','M','2014-01-01',13,'2014-02-04',269000,'2014-01-01',13,0,0,0,0,0,'F',24,0,0,'2014-02-14',8768,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (595,'617903352','05','0535','RAMANTHAPUR (DIV 5)','8500','2013-06-03','G.ANAND KUMAR','HNO.2-3-649/9','PREMNAGAR AMBERPET','','','1',0.5,'F','T','13b 8139','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,18538.8,0,0,0,0,'F',5,0,274.65,'2013-12-24',6150,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (597,'617904113','03','0311','TOLI CHOWK','8500','2013-06-03','KHAJA GAFFAR AHMED','8-1-40/33','SAMATHA COLONY','','','1',0.5,'F','T','19463','M','2014-01-01',11,'2014-02-18',135000,'2014-01-01',11,-0.14,0,0,0,0,'F',4,0,0,'2014-02-26',628,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (598,'617904168','15','0614','MADHAPUR','8500','2013-06-05','K.SATHYANARAYANA','PLOT NO. 2&3, SURVEY NO.','INDRA NAGAR, GACHIBOWLI','','','1',0.5,'F','T','13B 13430','L','2014-01-01',15,'2013-06-05',0,'2013-05-01',0,5076.47,5020,0,0,0,'F',2,0,75.3,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (599,'617904188','15','0614','MADHAPUR','8500','2013-06-04','SHAIK IMAM','1-112/34','KONDAPUR W/S COLONY,KONDAPUR','','','1',0.5,'F','T','13B 7024','M','2014-01-01',3,'2014-02-19',38000,'2014-01-01',3,5067.06,0,0,0,0,'F',3,0,75.3,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (602,'617904312','13','1322','SAINATHPURAM','8500','2013-06-13','SMT.K.HEMA LATA','HNO.45-151/2','UPPERGUDA MALKAJGIRI','','','1',0.5,'F','T','13A 7750','L','2014-01-01',15,'2013-06-13',0,'2013-05-01',0,627,5020,0,0,0,'F',1,0,0,'2014-01-31',628,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (603,'617904520','09','0917','BHAGYANAGAR','8500','2013-06-12','GONUGUNTLA SREELAKSHMI','2-22-311/47, PLOT NO-47C','ADDAGUTTA SOCIETY , KUKATPALLY','','','1',0.5,'F','T','000','M','2014-01-01',87,'2014-02-17',377000,'2014-01-01',87,7185.95,0,0,0,0,'F',0,0,0,'2014-01-24',870,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (605,'617904788','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-06-12','SRI C. PURNA CHANDERA REDDY','17-1-391/S/354, SINGARENI','VAISHALINAGAR, HYDERABAD','','','1',0.5,'F','T','13 B 6731','U','2014-01-01',15,'2013-06-12',0,'2013-05-01',0,5085.89,0,0,0,0,'F',0,0,75.3,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (606,'617904793','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-06-12','B.PRAVEEN','PLOT NO.142','SAIRAM NAGAR COLONY,','','','1',0.75,'F','T','12b32144','M','2014-01-01',12,'2014-02-19',166000,'2014-01-01',12,13857.4,0,0,0,0,'F',2,0,205.55,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (607,'617905464','07','0733','LALAPET','8500','2013-06-12','K. DEVAKI','12-1-668/13/2/A','SHANYI NAGAR','','','1',0.5,'F','T','13B 13645','M','2013-05-01',15,'2013-06-12',0,'2013-05-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (608,'617906617','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-06-12','P.VENGAL RAO','PLOT NO.6','NIRMALA NAGAR,KARMANGHAT','','','1',0.5,'F','T','13-B-6817','L','2014-01-01',15,'2013-12-17',85000,'2013-11-01',15,5020,1255,0,0,0,'F',2,0,75.3,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (609,'617907936','07','0733','LALAPET','8500','2013-06-17','A.LAXMAN RAO','12-1-508/15/B','SRIPURI COLONY','','','1',0.5,'F','T','13B 13465','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,0,0,0,0,0,'F',0,0,0,'2014-02-06',1865,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (610,'617907970','03','0311','TOLI CHOWK','8500','2013-06-13','MEHBOOB ALI KHAN','8-1-398/PM/279','PARAMOUNT COLONY,TOLICHOWKI,HY','','','1',0.5,'F','T','13B 2989','M','2013-06-01',15,'2013-07-24',15000,'2013-06-01',15,0.5,0,0,0,0,'F',1,0,0,'2013-08-14',627,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (611,'617908216','05','0511','GANDHINAGAR','8500','2013-06-15','DR.G.RANGA CHARY','H.NO 1-1-743/1','GANDHINAGAR NEW BAKARAM','','','2',0.75,'F','T','1368931','M','2014-01-01',107,'2014-02-10',701000,'2014-01-01',107,0,0,0,0,0,'F',9,0,0,'2014-02-20',4353,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (612,'617908276','10','0243','AUTONAGAR','8500','2013-05-23','SAMA MALLA REDDY','PLOT NO.46','VINAYAKA NAGAR COLONY,HAYATHNA','','','1',0.5,'F','T','13B 13974','M','2014-01-01',13,'2014-02-15',83000,'2014-01-01',13,5769.87,0,0,0,0,'F',3,0,84.71,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (613,'617908381','10','0244','ALKAPURI','8500','2013-06-10','ADIRAJU PERAYYA SASTRY','PLOT NO 16','SNEHAPURI COLONY NAGOLE','','','1',0.5,'F','T','13B 24320','R','2014-01-01',18,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',2,0,0,'2014-02-26',773,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (614,'617908460','06','0611','JUBILEE HILLS','8500','2013-06-15','M.B. RAJU','8-2-293/82/A/945,PLOT NO-','MASTAN NAGAR','','','1',0.5,'F','T','11A 46962','M','2014-01-01',11,'2014-02-14',63000,'2014-01-01',11,638,0,0,0,0,'F',1,0,0,'2014-02-04',950,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (615,'617908475','06','0611','JUBILEE HILLS','8500','2013-06-14','USHASREETIPIRNENI','PLOT NO 71','ROAD NO 71','','500096','1',0.5,'F','T','13-H-4176','M','2014-01-01',1,'2014-02-07',38000,'2014-01-01',1,0,0,0,0,0,'F',1,0,0,'2014-02-22',627.5,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (616,'617908480','06','0611','JUBILEE HILLS','8500','2013-06-13','SANJANA VIKRANT UDESHI','8-2-293/82/NG/PLOT NO.57','NANDAGIRI HILLS,JUBILEE HILLS,','','','1',0.5,'F','T','13B 24303','M','2014-01-01',39,'2014-02-16',349000,'2014-01-01',39,0,0,0,0,0,'F',3,0,0,'2014-02-27',2158.4,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (617,'617908613','15','1513','GACHIBOWLI (DIV 15)','8500','2013-06-05','MITTA MURALI MOHAN RAO','PLOT NO.55,STREET NO.5','TELECOM NAGAR,GACHIBOWLI,SERLI','','','1',0.75,'F','T','13B 1844','L','2013-08-01',50,'2013-06-05',0,'2013-05-01',0,9415.5,9415.5,0,0,0,'F',4,0,141.23,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (618,'617908755','03','0311','TOLI CHOWK','8500','2013-06-18','SYED ILYAS ALI','8-1-423/159','DIAMOND HILLS','','','1',0.5,'F','T','13A 4316','U','2014-01-01',15,'2013-06-18',0,'2013-05-01',0,0,0,0,0,0,'F',2,0,0,'2014-02-17',627,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (619,'617908982','09','0915','KPHB','8500','2013-06-15','P.NAGESWARA RAO AND ORHERS','PLOT NO.84','PHASE-IX','','','2',0.75,'F','T','182','M','2014-01-01',100,'2014-02-10',800000,'2014-01-01',100,4070,0,0,0,0,'F',7,0,0,'2014-02-03',4070,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (620,'617909258','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-06-17','Y.SHEKAR REDDY','PLOT NO.12,WEST & EAST PA','RTC.COLONY,KARMANGHAT','','','1',0.75,'F','T','2013 B 2000096','M','2013-05-01',50,'2013-06-17',0,'2013-05-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (621,'617909341','10','0241','SAROORNAGAR','8500','2013-06-15','SRI BANDI KRISHNA','PLOT NO.256,ROAD NO.2','TAPOVAN COLONY,SAROORNAGAR','','','1',0.5,'F','T','13 B 20114','M','2014-01-01',15,'2014-02-11',105000,'2014-01-01',15,1020,0,0,0,0,'F',1,0,0,'2014-01-12',4000,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (622,'617909409','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-05-20','B.PADMAJA','8-7-92/LKC/32','LAKSHMI NARASIMHA PURAM','','','1',0.5,'F','T','13B 44139','L','2014-01-01',15,'2013-05-20',0,'2013-04-01',0,0,4402.5,0,0,0,'F',1,0,0,'2014-02-23',212.5,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (623,'617910128','06','0624','S.R.NAGAR','8500','2013-06-18','P.NAGESH KUMAR','7-1-621/360/A','S R NAGAR,HYDERABAD','','','1',0.5,'F','T','13J 3991','M','2013-12-01',14,'2014-01-23',122000,'2013-12-01',14,-1196.4,0,0,0,0,'F',2,0,0,'2014-02-25',600,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (624,'617910148','09','0912','BALANAGAR','8500','2013-06-17','O.RUBEN RAJU','6-8-101/1','RAJU COLONY,BALANAGAR VILLAGE','','','1',0.5,'F','T','13b 13580','M','2014-01-01',11,'2014-02-22',100000,'2014-01-01',11,5020,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (625,'617910286','04','0412','ALLABANDA','8500','2013-06-18','SMT VIDYA BAI','13-1-114/1/B','AZIZ BAGH MANGALHAT,HYD','','','1',0.5,'F','T','','U','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,5227.08,0,0,0,0,'F',0,0,75.3,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (626,'617910695','09','0913','HASMATHPET','8500','2013-06-20','V.RAJESH','8-7-188/7/1(OLD NO.8-7-18','SAMATHA NAGAR,OLDBOWENPALLY','','','1',0.5,'F','T','13B 4641','M','2014-01-01',10,'2014-02-21',83000,'2014-01-01',10,5020,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (627,'617910851','10','0261','L.B.NAGAR','8500','2013-06-18','P. SRIKANTH','PLOT NO.91, SRINIVASA NAG','VISHALANDHRA COLONY, MANSOORAB','','','1',0.5,'F','T','12b658776','M','2013-11-01',19,'2013-12-23',248000,'2013-11-01',19,0.4,0,0,0,0,'F',4,0,0,'2014-01-27',1449,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (628,'617910932','09','0917','BHAGYANAGAR','8500','2013-06-14','V.BHARATHI','PLOT NO-117C','ADDAGUTTA CO-OP HOUSING SOCIET','','','1',0.5,'F','T','7B 1703','M','2014-01-01',12,'2014-02-17',83000,'2014-01-01',12,0,0,0,0,0,'F',0,0,0,'2014-02-24',625,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (630,'617912929','09','0917','BHAGYANAGAR','8500','2013-06-18','M.V.RAMA DEVI','4-35-563/12,P.NO.42(PART)','KUKATPALLY VILLAGE','','','1',0.75,'F','T','nx-13-1331','L','2013-05-01',50,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (631,'617913189','06','0613','THATTIKHANA','8500','2013-06-20','MAJJIGA SRILATHA','8-2-674/B/2/36','ROAD NO.13,BESIDE LOKSATTA OFF','','','1',0.75,'F','T','13b 1812','M','2014-01-01',23,'2014-02-11',96000,'2014-01-01',23,14114.3,0,0,0,0,'F',4,0,205.55,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (632,'617913208','06','0611','JUBILEE HILLS','8500','2013-06-19','G.GOPAL KRISHNA MURTHY','8-2-293/82/J III/197','ROAD NO 76, JUBLEE HILLS','','','1',0.75,'F','T','NX-12-9600','M','2014-01-01',60,'2014-02-07',284000,'2014-01-01',60,-0.1,0,0,0,0,'F',0,0,0,'2014-02-12',10837,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (633,'617913233','06','0611','JUBILEE HILLS','8500','2013-06-22','SUKHAVASI HARI BABU','PLOT NO.372-B-III','ROAD NO.81,JUBILEE HILLS,HYD','','','1',0.5,'F','T','13B 19822','M','2014-01-01',36,'2014-02-21',426000,'2014-01-01',36,1890.85,0,0,0,0,'F',1,0,0,'2014-02-21',7512,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (635,'617913656','15','0614','MADHAPUR','8500','2013-06-16','PADMARAJUALLURI','PLOT.NO.25','BACHPAN SCHOOL STREET','','500084','1',0.5,'F','T','586878','L','2014-01-01',14,'2013-10-15',16000,'2013-09-01',7,1255,2510,0,0,0,'F',4,0,0,'2013-10-15',1882.5,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (636,'617913871','07','0732','TARNAKA','8500','2013-06-23','B.MURALI KRISHNA AND OTHERS','12-5-55/A,PLOT NO 15','BATHKAMMAKUNTA,SOUTH LALLAGUDA','','','2',0.75,'F','T','13b 1047','M','2014-01-01',61,'2014-02-06',430000,'2014-01-01',61,1,0,0,0,0,'F',8,0,0,'2014-02-20',5871,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (637,'617913885','07','0724','SEETHAPALMANDI','8500','2013-06-22','E.POCHAIAH','12-10-664/3/1/B','SEETHAPALMANDI','','','1',0.5,'F','T','13 B 19664','R','2014-01-01',20,'0001-01-01',0,'0001-01-01',20,4526.84,0,0,0,0,'F',0,0,65.61,'2014-01-25',700,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (638,'617914305','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-06-24','SMT. P. ARUNA','PLOT NO.A/427, GREENPARK','VAISHALINAGAR, HYDERABAD','','','1',0.5,'F','T','g875896','M','2014-01-01',15,'2014-02-16',40000,'2014-01-01',15,5085.89,0,0,0,0,'F',3,0,75.3,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (639,'617914330','10','0241','SAROORNAGAR','8500','2013-06-23','G.SATISH','PLOT NO.15,SY.NO.57,61,63','RD NO:8 BHAGYANAGAR COLONY,LIN','','','1',0.5,'F','T','13 B 13761','L','2014-01-01',16,'2013-06-23',0,'2013-05-01',0,-0.4,5311.6,0,0,0,'F',4,0,0,'2014-02-25',1352,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (640,'617914645','13','1322','SAINATHPURAM','8500','2013-06-22','NAGESWARAM SUMAN','42-518/C/1,S PART OF PLOT','M.J.COLONY, MOULA ALI','','','1',0.5,'F','T','92141','L','2014-01-01',15,'2013-06-22',0,'2013-05-01',0,5020,5020,0,0,0,'F',1,0,75.3,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (641,'617914845','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-06-22','SRUJENDER REDDYGUNTAKANDLA','PLOT NO 128','RTC COLONY','','500070','1',0.5,'F','T','13B 19416','L','2014-01-01',15,'2013-06-22',0,'2013-05-01',0,5020,5020,0,0,0,'F',4,0,75.3,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (642,'617914875','10','0261','L.B.NAGAR','8500','2013-06-26','CH.GOVARDHANA DEVI','PLOT NO.70','SRI SAI NAGAR,NAGOLE','','','1',0.5,'F','T','13B.19814','M','2014-01-01',18,'2014-02-11',118000,'2014-01-01',18,0,0,0,0,0,'F',0,0,0,'2014-02-22',773,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (643,'617914916','09','0917','BHAGYANAGAR','8500','2013-06-19','P.VEERESHAM','5-7-1/B, (OLD NO.5-7-1/A)','SANGEETH NAGAR, DAYARGUDA','','','1',0.5,'F','T','13J3986','M','2014-01-01',3,'2014-02-12',77000,'2014-01-01',3,5020,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (644,'617915059','07','0732','TARNAKA','8500','2013-06-25','V.S.MANYAM','12-13-277','TARNAKA','','','1',0.5,'F','T','13B 24332','M','2014-01-01',19,'2014-02-03',131000,'2014-01-01',19,0,0,0,0,0,'F',0,0,0,'2014-02-19',821.9,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (645,'617915509','07','0732','TARNAKA','8500','2013-06-24','M.RAGHUNATH','12-13-485/2/A','NAGARJUNA NAGAR','','','1',0.75,'F','T','13 A1101','M','2014-01-01',22,'2014-02-09',107000,'2014-01-01',22,0.2,0,0,0,0,'F',1,0,0,'2014-02-17',1713,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (647,'617915666','10','0244','ALKAPURI','8500','2012-12-03','MR.SRIRAM BABU SHASHIKANTH','PLOT NO.14/V/1','ALKAPURI','','','1',0.5,'F','T','12B 54639','U','2014-01-01',17,'2012-12-03',0,'2012-11-01',0,9516.51,0,0,0,0,'F',1,0,139.07,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (648,'617915730','07','0732','TARNAKA','8500','2013-06-25','MEKA.ROJA','12-13-853/22','TARNAKA','','','1',0.75,'F','T','13b 2256','L','2014-01-01',20,'2014-01-08',82000,'2013-12-01',20,14268.5,1712.9,0,0,0,'F',2,0,205.55,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (649,'617915829','03','0311','TOLI CHOWK','8500','2013-06-24','FAREEDA SULTANA','8-1-346/19/A/1 & A/2','BRIVAND COLONY','','','2',0.75,'F','T','88116','L','2013-12-01',105,'2013-06-24',0,'2013-05-01',0,54297.1,53721.5,0,0,0,'F',21,0,805.82,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (650,'617915834','03','0311','TOLI CHOWK','8500','2013-06-26','SYED FAZAL ULLAH HUSSAINI','8-1-402/A/49 & 50','MINI GULSHAN COLONY','','','2',0.75,'F','T','88305','M','2014-01-01',46,'2014-02-21',216000,'2014-01-01',46,38068,0,0,0,0,'F',13,0,571.02,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (652,'617917633','10','0244','ALKAPURI','8500','2013-06-25','P.PRABHAVATHI','11-11-171/A','TELEPHONE COLONY,ROAD NO.5,ALK','','','1',0.5,'F','T','11b144563','M','2014-01-01',5,'2014-02-05',87000,'2014-01-01',5,2899,0,0,0,0,'F',0,0,43.49,'2013-10-29',2607,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (653,'617917715','10','0261','L.B.NAGAR','8500','2013-02-12','M.KRISHNA REDDY','2-4-16/3/D/4  P NO 12','SAI NAGAR, NAGOLE ,','','','1',0.5,'F','T','13B 1025','M','2013-01-01',15,'2013-02-12',0,'2013-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (654,'617917768','15','0614','MADHAPUR','8500','2013-06-24','M RAVINDER GOUD','1-3/5/8','MASEED BANDA,KONDAPUR','','','1',0.5,'F','T','13B 19811','L','2014-01-01',15,'2013-06-24',0,'2013-05-01',0,24505.9,24460,0,0,0,'F',5,0,366.9,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (655,'617917801','15','0614','MADHAPUR','8500','2013-06-26','M SATTAYYA','1-59/14','MASEED BANDA,KONDAPUR','','','1',0.5,'F','T','13 B 13033','M','2014-01-01',15,'2014-02-03',68000,'2014-01-01',15,5123.53,0,0,0,0,'F',1,0,75.3,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (656,'617918012','14','1421','HUBSIGUDA','8500','2013-06-04','M.LAXMI KANTHA REDDY','1-9-19/12','RAVINDRANAGAR','','','1',0.75,'F','T','13B-1158','M','2014-01-01',27,'2014-02-13',280000,'2014-01-01',27,4273,0,0,0,0,'F',7,0,0,'2014-02-06',4270,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (657,'617918142','05','0541','NARAYANGUDA','8500','2013-06-26','C.PARUSHURAM YADAV','3-5-525 & 526','NARAYANGUDA,VITTALWADI,HYDERAB','','','1',0.5,'F','T','B176347','M','2014-01-01',5,'2014-02-13',106000,'2014-01-01',5,5727.72,0,0,0,0,'F',0,0,82.59,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (658,'617919339','10','0243','AUTONAGAR','8500','2013-06-29','N.YELLAMMA','PLOT.NO.483','DEFENCE COLONY ANMAGAL','','','1',0.75,'F','T','12b4521','M','2014-01-01',34,'2014-02-20',273000,'2014-01-01',34,4792.3,0,0,0,0,'F',3,0,0,'2014-01-09',9000,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (659,'617919546','09','0913','HASMATHPET','8500','2013-06-29','T.SIVA SREENIVASULU AND OTHERS','8-7-177/3,(OLD NO:8-7-177','SWARNADAMA NAGAR','','','2',0.75,'F','T','13B 3634','M','2014-01-01',16,'2014-02-18',135000,'2014-01-01',16,17656,0,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (660,'617919863','15','0614','MADHAPUR','8500','2013-06-29','S SIVAMMA','2-56/D/213/11A','CHANDA NAIK NAGAR, KHANMET','','','1',0.5,'F','T','13B 9274','L','2013-10-01',15,'2013-06-29',0,'2013-05-01',0,0,3137.5,0,0,0,'F',1,0,0,'2013-12-04',1882.5,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (661,'617919954','10','0244','ALKAPURI','8500','2013-06-15','MOHD ABDUL RAZAK','11-21-141,PLOT NO.269,ROA','RAMAKRISHNA PURAM,ALKAPURI','','','1',0.5,'F','T','13B 1002','R','2014-01-01',18,'0001-01-01',0,'0001-01-01',0,4944.72,0,0,0,0,'F',1,0,72.09,'2013-09-27',700,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (662,'617920248','14','1423','RAMANTHAPUR(DIV 14)','8500','2013-06-22','BUCHI REDDY PALLE','PLOT. NO. 92B','RAVINDRANAGAR','','','1',0.5,'F','T','13B 32096','M','2013-05-01',15,'2013-06-22',0,'2013-05-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (663,'617920920','07','0722','MARREDPALLY','8500','2013-07-01','M BABU','10-3-24/6 P NO-11','EAST MARREDPALLY','','','1',0.5,'F','T','13A 48012','M','2013-06-01',15,'2013-07-01',0,'2013-06-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (664,'617921419','10','0261','L.B.NAGAR','8500','2013-06-26','PUNNA DASHARATHA','PLOT NO.366','JUDGES COLONY,MANSOORABAD','','','1',0.5,'F','T','13B 19525','U','2014-01-01',17,'2013-06-26',0,'2013-05-01',0,724.6,0,0,0,0,'F',0,0,0,'2014-01-18',1345,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (665,'617921541','10','0243','AUTONAGAR','8500','2013-06-25','APPAM  RAMULU','PLOT NO . 4&5','SRI PADMAVATHI COLONY','','','1',0.5,'F','T','13A 12652','U','2014-01-01',15,'2013-06-25',0,'2013-05-01',0,5020,0,0,0,0,'F',0,0,75.3,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (666,'617921556','10','0243','AUTONAGAR','8500','2013-06-29','M SHANKARAIAH','PLOT NO.17 WEST PART','SRI VENKATESWARA COLONY,HAYATH','','','1',0.5,'F','T','13B 32118','U','2014-01-01',15,'2013-06-29',0,'2013-05-01',0,0,0,0,0,0,'F',3,0,0,'2014-02-14',627,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (667,'617921590','09','0917','BHAGYANAGAR','8500','2013-07-01','LOKAIAH','HNO.5-7-9/8/1 PLOT NO.20','BALARAM NAGAR SANGEETHA NAGAR,','','','1',0.5,'F','T','13J 14783','M','2014-01-01',15,'2014-02-20',105000,'2014-01-01',15,2125.5,0,0,0,0,'F',0,0,31.88,'2013-11-21',2510,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (668,'617921963','10','0243','AUTONAGAR','8500','2013-07-01','DODA  KAVITHA','PLOT NO .10','SIDDI VINAYAKANAGAR COLONY','','','1',0.5,'F','T','13B 13084','M','2013-06-01',15,'2013-07-01',0,'2013-06-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (669,'617921989','10','0261','L.B.NAGAR','8500','2013-07-01','SRI GATTU SOMAIAH','PLOT NO.27','SARASWATHI NAGAR COLONY,MANSOO','','','1',0.5,'F','T','13B 13095','M','2014-01-01',15,'2014-02-12',89000,'2014-01-01',15,3424.56,0,0,0,0,'F',0,0,50.89,'2014-01-22',1000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (671,'617922531','09','0917','BHAGYANAGAR','8500','2013-07-02','B.SRINIVASULU','PLOT NO-235','BHAGYANAGAR CO-OP HOUSING SOCI','','','1',0.75,'F','T','NX-13-2212','M','2014-01-01',45,'2014-02-15',322000,'2014-01-01',45,910.1,0,0,0,0,'F',3,0,0,'2014-02-02',1001,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (672,'617922648','06','0611','JUBILEE HILLS','8500','2013-07-01','YALAMANCHILI JITHIN KUMAR','8-2-293/82/NL/319','M.L.A\'S &M.P\'S COLONY,JUBILEE','','','1',0.5,'F','T','06012409','M','2014-01-01',9,'2014-02-06',12000,'2014-01-01',9,-688.5,0,0,0,0,'F',1,0,0,'2013-12-31',1113,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (673,'617922653','06','0611','JUBILEE HILLS','8500','2013-07-01','DR.PUNJALA RAVINDRA KUMAR','PLOT NO.148','MLA \'S & MP\'S COLONY','','','1',0.5,'F','T','13B 19398','M','2014-01-01',11,'2014-02-08',61000,'2014-01-01',11,-2.5,0,0,0,0,'F',3,0,0,'2014-02-11',630,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (674,'617922668','06','0611','JUBILEE HILLS','8500','2013-06-28','SRI T.SIVA SANKARA RAO','PLOT NO.68','NANDAGIRI HILLS JUBLEE HILLS H','','','1',0.75,'F','T','NX 13 1399','M','2014-01-01',20,'2014-02-16',231000,'2014-01-01',20,1713.15,0,0,0,0,'F',4,0,0,'2014-01-27',1713,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (675,'617922832','03','0342','KARWAN','8500','2013-07-01','SUDHEER SINGH','HNO.13-5-160/11','LODHA KASHTIRYA NAGAR AMLAPUR','','','1',0.5,'F','T','12 B23766','M','2013-11-01',7,'2013-12-27',36000,'2013-11-01',7,3137.5,0,0,0,0,'F',1,0,47.06,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (676,'617923960','05','0521','MUSHEERABAD','8500','2013-06-27','GANDLA RADHA KRISHNA','1-6-244/1','ZAMISTANPUR','','','1',0.5,'F','T','13B 8199','M','2014-01-01',14,'2014-02-23',94000,'2014-01-01',14,5123.54,0,0,0,0,'F',0,0,75.3,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (677,'617924240','14','1412','HOUSING BOARD','8500','2013-06-16','M RAM LAKSHMAN','PLOT.NO.19','INDIRA MOUL-ALI','','','1',0.5,'F','T','01653746','M','2013-05-01',15,'2013-06-16',0,'2013-05-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (678,'617924302','09','0917','BHAGYANAGAR','8500','2013-06-05','KOLLISITAMAHALAKSHMI','PLOT 4 SY NO 70','A S R RAJU NAGAR ROAD NO 3 PLO','','500072','2',0.75,'F','T','NX-12-2893','M','2014-01-01',7,'2014-02-12',47000,'2014-01-01',7,0,0,0,0,0,'F',6,0,0,'2014-02-19',2207,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (679,'617924952','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-06-20','N.HANUMANTHA RAO','PLOT NO.36,PHASE-II','ABHYUDAYANAGAR,SAHEBNAGAR KHUD','','','1',0.5,'F','T','12 B59027','L','2013-10-01',15,'2013-06-20',0,'2013-05-01',0,3137.5,3137.5,0,0,0,'F',4,0,47.06,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (680,'617925016','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-06-22','C.SWAPNA','PLOT NO.114','MADHAVA NAGAR,KARMANGHAT','','','1',0.5,'F','T','13 B 19421','M','2014-01-01',8,'2014-02-25',100000,'2014-01-01',8,628,0,0,0,0,'F',4,0,0,'2014-02-06',622,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (681,'617925072','05','0532','SHIVAM','8500','2013-07-01','BELLAMKONDAMURALI','2-3-692/22/12/1','C.P.L.ROAD','','500013','1',0.5,'F','T','12 B 1007','M','2013-06-01',15,'2013-07-01',0,'2013-06-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (682,'617925385','10','0241','SAROORNAGAR','8500','2013-01-24','SAMATHADEVULAPALLY','PLOT NO 63B','ROAD NO:19 JANAKI ENCLAVE,LING','','500035','1',0.5,'F','T','13B 30541','M','2013-11-01',14,'2013-12-10',150000,'2013-11-01',14,6902.5,0,0,0,0,'F',4,0,103.54,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (683,'617925433','10','0241','SAROORNAGAR','8500','2013-07-05','SRI SHAASINDER RAJULUDEV','PLOT NO.7','SOWBHAGYANAGAR COLONY,SAROORNA','','','1',0.5,'F','T','13-B 25626','L','2014-01-01',15,'2014-01-14',90000,'2013-12-01',15,4392.5,627.5,0,0,0,'F',3,0,65.89,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (684,'617925491','15','0614','MADHAPUR','8500','2013-07-06','D.HARI HARI NATH','PLOT.207','RAVINDRA SOCIETY KAVERI HILLS','','','1',0.75,'F','T','NX-12-2980','L','2013-12-01',30,'2013-11-21',140000,'2013-10-01',30,11925.6,3425.8,0,0,0,'F',1,0,175.55,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (685,'617925551','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-07-03','K.RASMI','PLOT NO.17`1','KISHAN KUMAR ENCLAVE,KARMANGHA','','','1',0.5,'F','T','12B 43278','L','2013-12-01',15,'2013-12-19',75000,'2013-11-01',15,0,627.5,0,0,0,'F',4,0,0,'2014-02-25',625,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (686,'617925566','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-07-01','I.SREESHA','10-7/1','SRINIVASA GAYATHRINAGAR','','500097','1',0.5,'F','T','13B 13702','M','2013-06-01',15,'2013-07-01',0,'2013-06-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (687,'617925628','14','1422','UPPAL','8500','2013-05-20','E. KASI REDDY','2-19-79/118','TEACHERS COLONY, UPPAL','','','1',0.5,'F','T','','M','2013-04-01',15,'2013-05-20',0,'2013-04-01',0,0,0,0,0,0,'F',10,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (688,'617926089','14','1411','RADHIKA','8500','2013-07-01','SRI.G.NAGESHWAR REDDY AND OTHERS','HNO.1-4-190/8P&9','BHASKAR RAO NAGAR,KAPRA','','','2',0.75,'F','T','13B 1748','M','2013-06-01',50,'2013-07-01',0,'2013-06-01',0,0,0,0,0,0,'F',22,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (689,'617926413','14','1412','HOUSING BOARD','8500','2013-07-04','CHENNOJU DINESH','3-15-149','VENKATA RAMANA COLONY,MALLAPUR','','','1',0.5,'F','T','13B 37182','M','2013-06-01',15,'2013-07-04',0,'2013-06-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (690,'617926650','10','1031','MARUTHINAGAR (DIV 10)','8500','2013-06-17','BHAVANI DEVELOPERS','1-6-188','PHANIGIRICOLONY,CHITANYAPURI,K','','','2',0.75,'F','T','13B 4008','L','2013-12-01',34,'2013-11-20',170000,'2013-10-01',34,15449,4414,0,0,0,'F',6,0,231.74,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (691,'617927209','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-07-05','J.LAVANYA','H NO.5-7-410,P NO.121','SRIRAM NAGAR,B N REDDY NAGAR,V','','','1',0.5,'F','T','13 B 13698','U','2014-01-01',15,'2013-07-05',0,'2013-06-01',0,1254.5,0,0,0,0,'F',3,0,0,'2013-12-14',3138,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (692,'617927229','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-07-01','D.SAKKU BAI','PLOT NO.45,8-6-963/1','HASTHINAPURAM EAST COLONY','','','1',0.5,'F','T','220566','M','2014-01-01',15,'2014-02-19',30000,'2014-01-01',15,4441.1,0,0,0,0,'F',1,0,66.62,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (693,'617927252','09','0912','BALANAGAR','8500','2013-07-02','G.JYOTHI','7-4-417/6, PLOT NO.97','KALYANI NAGAR, FEROZGUDA','','','1',0.5,'F','T','12-6284','M','2013-12-01',10,'2014-01-14',59000,'2013-12-01',10,0,0,0,0,0,'F',3,0,0,'2014-01-30',3765,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (694,'617927807','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-06-22','B.RAMESH','PLOT NO.81','ANUPAMA NAGAR COLONY,N.S.ROAD','','','1',0.5,'F','T','13b 36112','L','2014-01-01',13,'2014-01-20',93000,'2013-12-01',13,628,627.5,0,0,0,'F',1,0,0,'2014-02-08',627,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (695,'617927937','06','0611','JUBILEE HILLS','8500','2013-07-07','SWARNAMUKHI BUILDERS AND REP.BY SRI NVSN MOHA','PLOT NO.5,TYPE-A,SITE-II,','PHASE-II,FILM NAGAR, JUBILEE H','','','2',0.75,'F','T','13b 1835','M','2014-01-01',110,'2014-02-18',468000,'2014-01-01',110,0,0,0,0,0,'F',8,0,0,'2014-02-25',6000,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (696,'617927962','06','0611','JUBILEE HILLS','8500','2013-07-04','ANIL KUMAR JAIN','PLOT NO(PORT)509-Q-III','JUBILEE HILLS ROAD NO 86 HYD','','','1',0.75,'F','T','NX 13 1387','M','2014-01-01',34,'2014-02-22',254000,'2014-01-01',34,1713.9,0,0,0,0,'F',4,0,0,'2014-01-20',1712,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (697,'617928052','09','0917','BHAGYANAGAR','8500','2013-07-03','S.JAGADESHWAR','2-22-12','EENANDU SOCIETY,BHAGYANAGAR','','','1',0.75,'F','T','NX 2 2372','M','2014-01-01',34,'2014-02-11',247000,'2014-01-01',34,0,0,0,0,0,'F',8,0,0,'2014-02-10',4880,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (698,'617928502','03','0311','TOLI CHOWK','8500','2013-07-05','MRS.RAFIQUA BEGUM','HNO.8-1-423/A/229','DIAMOND HILLS SHAIKPET','','','1',0.5,'F','T','13B 13414','U','2014-01-01',15,'2013-08-19',15000,'2013-07-01',15,4467.8,0,0,0,0,'F',2,0,65.89,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (699,'617928562','03','0311','TOLI CHOWK','8500','2013-07-08','MOHAMMED SHAHED','8-1-329/A/1/14','KOH E SAR COLONY','','','1',0.5,'F','T','13 A-31486','M','2013-12-01',11,'2014-01-14',73000,'2013-12-01',11,-2.35,0,0,0,0,'F',3,0,0,'2014-02-03',665,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (700,'617929148','04','0433','GUNFOUNDRY','8500','2013-07-08','GHANSHYAM DAS TAPADIYA','5-9-30/1/6/A','PALACE COLONY','','','1',0.75,'F','T','13B 2283','M','2014-01-01',5,'2014-02-09',5000,'2014-01-01',5,3057.2,0,0,0,0,'F',5,0,0,'2014-01-07',19255,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (701,'617929431','05','0511','GANDHINAGAR','8500','2013-07-09','SMT.J.TRIVENI','HNO.1-10-1/7/OPEN','ASHOKNAGAR','','','2',0.75,'F','T','13-h-2901','M','2014-01-01',42,'2014-02-01',143000,'2014-01-01',42,1842.5,0,0,0,0,'F',5,0,0,'2014-01-25',4009,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (702,'617929558','05','0513','BOATS CLUB','8500','2013-07-10','MOHAMMED RAEESUDDIN','1-4-550/36, 37/37/A','BHOLAKPUR','','','1',0.5,'F','T','12B10089','R','2014-01-01',3,'0001-01-01',0,'0001-01-01',3,0.24,0,0,0,0,'F',0,0,0,'2014-02-07',634,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (703,'617929977','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-07-05','MEREDDY VAMSHI','PLOT NO.57/C,BLOCK NO.III','VENKATARAMANA COLONY,KARMANGHA','','','1',0.5,'F','T','13 B 13471','U','2014-01-01',15,'2013-07-05',0,'2013-06-01',0,4392.5,0,0,0,0,'F',0,0,65.89,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (704,'617930168','02','0211','MALAKPET','8500','2013-06-22','RAZIYA SULTANA  AND OTHER','16-9-406/A/19','WAHED NAGAR','','','1',0.5,'F','T','11B 7816','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,628,0,0,0,0,'F',0,0,0,'2014-01-30',627,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (705,'617930550','10','0261','L.B.NAGAR','8500','2013-07-10','T.VNU KUMAR','PLOT NO.43','ROCK TOWN COLONY','','','1',0.5,'F','T','1332946','M','2014-01-01',5,'2014-02-19',65000,'2014-01-01',5,4392.5,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (706,'617930776','10','0261','L.B.NAGAR','8500','2013-07-13','SMT P.VANAJA RANI','PLOT NO.106 NORTH PART','PADMAVATHI NAGAR,MANSOORABAD','','','1',0.5,'F','T','13B 1100','U','2014-01-01',17,'2013-07-13',0,'2013-06-01',0,0.1,0,0,0,0,'F',0,0,0,'2014-02-16',725,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (707,'617931169','03','0332','KAKATIYA NAGAR','8500','2013-07-08','V.MADHUSUDHAN PHANI','12-2-717/C/5','SAPTAGIRI NAGAR,RETHIBOWLI,HYD','','','1',0.75,'F','T','1381827','M','2014-01-01',44,'2014-02-15',290000,'2014-01-01',44,0,0,0,0,0,'F',1,0,0,'2014-02-16',2603.9,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (709,'617931389','06','0622','FATHENAGAR','8500','2013-07-16','RAVI KUMAR AGARWAL','HNO.7-2-1249/1 PART','SANATHNAGAR,HYDERABAD','','','1',0.5,'F','T','13B1381','M','2014-01-01',10,'2014-02-22',165000,'2014-01-01',10,4479.48,0,0,0,0,'F',4,0,66.62,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (710,'617931406','06','0624','S.R.NAGAR','8500','2013-07-16','K. SRINIVAS','7-1-483/B','AMEER PET KUMMAR BASTI','','','1',0.5,'F','T','13B 404239','R','2014-01-01',18,'0001-01-01',0,'0001-01-01',0,773.51,0,0,0,0,'F',4,0,0,'2014-01-21',773,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (711,'617931501','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-07-10','BURUGU SWETHA REDDDY','5-6-523/1  PLOT NO 881','S K D NAGAR','','','1',0.5,'F','T','13B 19447','U','2014-01-01',15,'2013-07-10',0,'2013-06-01',0,2.5,0,0,0,0,'F',4,0,0,'2014-02-18',600,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (713,'617932748','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-07-16','N. NEELA','PLOT NO.307','SRINIVASAPURAM COLONY','','','1',0.5,'F','T','13b 68601','U','2014-01-01',15,'2013-07-16',0,'2013-06-01',0,627.5,0,0,0,0,'F',0,0,0,'2014-01-21',625,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (714,'617933219','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-07-09','M. MALLIKARJUN','PLOT NO.C-4 EAST PART,SY.','HASTINAPURAM NORTH','','','1',0.5,'F','T','13B 3973','M','2014-01-01',13,'2014-02-20',85000,'2014-01-01',13,4477.21,0,0,0,0,'F',1,0,65.89,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (715,'617933238','14','1422','UPPAL','8500','2013-05-27','LALITHA KUMARI','22-5/8/19/4','BALAJI ENCLAVE','','500039','1',0.5,'F','T','01647487','M','2013-04-01',15,'2013-05-27',0,'2013-04-01',0,-1900,0,0,0,0,'F',0,0,0,'2013-09-06',1900,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (716,'617933542','13','1321','DEFENCE COLONY','8500','2013-07-19','HANDJA BAI.   BHURI DEVI.   PIYARI DEVI.','27-3/1/2/A,','NEREDMETT  MALKAJGIRI','','','1',0.5,'F','T','82160','L','2014-01-01',15,'2013-07-19',0,'2013-06-01',0,1254.5,4392.5,0,0,0,'F',3,0,0,'2013-12-27',628,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (717,'617934150','15','0614','MADHAPUR','8500','2013-07-20','P.RAMAKRISHNA','1-60/30/35/134','ANJAIAH NAGAR,GACHIBOWLI','','','1',0.5,'F','T','13B 19612','L','2014-01-01',15,'2013-07-20',0,'2013-06-01',0,29971.6,29907.5,0,0,0,'F',7,0,448.61,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (718,'617934190','15','0614','MADHAPUR','8500','2013-07-16','PALAKEETI SREENU','1-60/30/19/136','ANJAIAH NAGAR GACHIBOWLI(V) SE','','','2',0.75,'F','T','13B 1874','M','2013-12-01',10,'2014-01-20',70000,'2013-12-01',10,6581.15,0,0,0,0,'F',18,0,98.72,'2014-01-06',6877,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (719,'617934210','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-07-05','K.ARUNA RANI','PLOT NO.75/E','A.P.S.E.B.COLONY,N.S.ROAD,SAHE','','','1',0.5,'F','T','12B 23880','M','2014-01-01',9,'2014-02-20',105000,'2014-01-01',9,625.1,0,0,0,0,'F',4,0,0,'2014-02-07',630,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (720,'617934352','10','0243','AUTONAGAR','8500','2013-07-14','M . INDIRAMMA','PLOT NO .38','HUDA SAI NAGAR VANASTHALI PURA','','','1',0.5,'F','T','13B 60612','L','2014-01-01',14,'2013-12-09',84000,'2013-11-01',14,2978.5,1255,0,0,0,'F',0,0,44.68,'2013-10-31',1900,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (721,'617934413','14','1411','RADHIKA','8500','2013-07-19','SRI.M.V.S.SATYANARAYANA','1-1-110/II/5','RAMDAS NAGAR ,EXTENSION .II,','','','1',0.5,'F','T','13B 44236','M','2013-09-01',5,'2013-10-22',15000,'2013-09-01',5,-3185.5,0,0,0,0,'F',3,0,0,'2014-02-16',3185,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (722,'617934531','04','0424','HINDI NAGAR','8500','2013-07-16','MRS..   ARIFUNISSA','5-6-599/600 PART','DARGAH SHAH','','','1',0.5,'F','T','','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,4392.5,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (723,'617934615','15','0614','MADHAPUR','8500','2013-06-19','J NAGARU','P.NO.211','NEW HAFEEZPET','','','1',0.5,'F','T','13B 18269','L','2014-01-01',14,'2013-10-15',36000,'2013-09-01',9,5067.06,2510,0,0,0,'F',1,0,75.3,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (724,'617934681','06','0622','FATHENAGAR','8500','2013-07-19','R.SHIVA KIRAN REDDY','7-1-282/C/1/1/15/A','B.K.GUDA','','','1',0.5,'F','T','12B 1146','M','2014-01-01',10,'2014-02-10',72000,'2014-01-01',10,4533.69,0,0,0,0,'F',4,0,65.89,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (725,'617934696','06','0622','FATHENAGAR','8500','2013-07-19','K.SHEKAR','7-1-246/B/1/28','RENUKANAGAR (EAST),BALKAMPET','','','1',0.5,'F','T','13043880','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',10,4496.04,0,0,0,0,'F',3,0,65.89,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (726,'617935086','13','1322','SAINATHPURAM','8500','2013-07-15','K.HARISH KUMAR','HNO.30-240/1/1A','OLD SAFILGUDA MALKAJGIRI','','','1',0.5,'F','T','B 13043861','L','2014-01-01',15,'2013-07-15',0,'2013-06-01',0,4392.5,4392.5,0,0,0,'F',1,0,65.89,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (727,'617935425','15','0614','MADHAPUR','8500','2013-07-20','M.DASHARATHA','PLOT NO.42, SY.NO.167','MASEED BANDA, KONDAPUR','','','1',0.5,'F','T','13B 25661','L','2014-01-01',15,'2013-07-20',0,'2013-06-01',0,4401.91,4392.5,0,0,0,'F',3,0,65.89,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (728,'617935430','15','0614','MADHAPUR','8500','2013-07-20','M.LAXMAMMA','1-78/2','MASEED BANDA,KONDAPUR','','','1',0.5,'F','T','13A 3626','L','2014-01-01',15,'2013-07-20',0,'2013-06-01',0,3392.5,4392.5,0,0,0,'F',3,0,0,'2013-10-03',1000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (729,'617935461','07','0733','LALAPET','8500','2013-07-20','RAPOLU SONIYA','12-14-392/A/1','VINOBHA NAGAR','','','1',0.5,'F','T','B 13043918','M','2013-12-01',15,'2014-01-14',70000,'2013-12-01',15,1255,0,0,0,0,'F',0,0,0,'2013-12-02',2510,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (730,'617935947','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-07-11','N. PRAMEELA','PLOT NO. 43','RAJI REDDY NAGAR, ( ADJ. TO CH','','','1',0.5,'F','T','13B 13425','L','2014-01-01',16,'2013-07-11',0,'2013-06-01',0,0,4538.3,0,0,0,'F',3,0,0,'2014-02-25',4538.3,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (732,'617936046','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-07-10','A.VANI','PLOT-NO-161','SAIRAM NAGAR','','','1',0.5,'F','T','13 B 13746','U','2014-01-01',15,'2013-11-19',60000,'2013-10-01',15,-117.5,0,0,0,0,'F',3,0,0,'2014-01-22',2000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (733,'617936103','06','0632','VENGALRAONAGAR','8500','2013-07-20','V. SEETHA','8-3-228/93/G/6/A','RAHMATH NAGAR YOUSUF GUDA','','','1',0.5,'F','T','13 B 8112','U','2014-01-01',17,'2013-07-20',0,'2013-06-01',0,4119.38,0,0,0,0,'F',0,0,59.64,'2014-01-11',1000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (734,'617936118','06','0632','VENGALRAONAGAR','8500','2013-07-20','MOHAMMED SHAKER AZIZ','8-3-228/250','RAHAMATH NAGAR,YOUSUFGUDA HYDE','','','1',0.5,'F','T','13 B 16112','M','2014-01-01',20,'2014-02-26',85000,'2014-01-01',20,5674.32,0,0,0,0,'F',0,0,84.11,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (735,'617936240','15','0614','MADHAPUR','8500','2013-07-19','M DHASU','P.NO.18,SY.NO.136','NEW PJR NAGAR,GACHIBOWLI','','','1',0.5,'F','T','13b80815','L','2014-01-01',15,'2013-07-19',0,'2013-06-01',0,4420.74,4392.5,0,0,0,'F',3,0,65.89,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (736,'617936759','06','0611','JUBILEE HILLS','8500','2013-07-23','SUNDEEPREDDY','8-2-293/82/A/610/1','ROAD NO 33','','','1',0.5,'F','T','13B 3871','M','2013-12-01',2,'2014-01-15',84000,'2013-12-01',2,-0.76,0,0,0,0,'F',1,0,0,'2014-02-08',4135,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (737,'617936764','06','0611','JUBILEE HILLS','8500','2013-07-21','P.HARI KISHORE','8-2-293/82/A/186/1','ROAD NO.15,JUBILEE HILLS ,HYD','','','1',0.5,'F','T','13B 13410','M','2014-01-01',16,'2014-02-09',79000,'2014-01-01',16,666.5,0,0,0,0,'F',1,0,0,'2014-01-24',3148,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (738,'617937010','09','0917','BHAGYANAGAR','8500','2013-07-22','C.NAGARJUNA','22-84/A PART','EENADU SOCIETY, KUKATPALLY','','','1',0.5,'F','T','13B 43943','M','2014-01-01',9,'2014-02-11',64000,'2014-01-01',9,627.5,0,0,0,0,'F',0,0,0,'2014-01-25',625,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (739,'617937239','05','0512','DOMALGUDA','8500','2013-07-08','V.RAMPRASAD','1-2-217/3/C/1,1-2-217/3/B','10','','500029','2',0.75,'F','T','12 10012','M','2014-01-01',32,'2014-02-21',179000,'2014-01-01',32,24786.4,0,0,0,0,'F',15,0,366.19,'2014-02-25',10000,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (740,'617937440','07','0714','SRINIVAS NAGAR','8500','2013-07-24','VENUCHILA','12-11-382/C','4','','','1',0.5,'F','T','13A 31724','M','2013-06-01',15,'2013-07-24',0,'2013-06-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (741,'617938087','06','0622','FATHENAGAR','8500','2013-07-29','V.VINOD KUMAR MUDIRAJ','7-1-304/5/1/A','B.K.GUDA','','','1',0.5,'F','T','13B 2945','M','2014-01-01',10,'2014-02-22',86000,'2014-01-01',10,2510.5,0,0,0,0,'F',3,0,37.66,'2013-11-15',1254,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (742,'617938092','06','0622','FATHENAGAR','8500','2013-07-29','V.SUSHMA','PLOT NO.61,SURVEY NOS.10,','BAHLOOL KHAN GUDA, BALKAMPET,S','','','1',0.5,'F','T','13A 12647','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',7,3.5,0,0,0,0,'F',4,0,0,'2014-02-14',624,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (743,'617938245','10','0244','ALKAPURI','8500','2013-07-20','CH. MANJULA','PLOT NO.42B','GREEN HILLS COLONY','','','1',0.75,'F','T','13B 1801','M','2014-01-01',32,'2014-02-20',232000,'2014-01-01',32,3425.3,0,0,0,0,'F',3,0,0,'2014-01-02',3425,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (744,'617938250','10','0244','ALKAPURI','8500','2013-07-20','SMT. K. KAVITHA','PLOT NO.19, GREEN HILLS C','GREEN HILLS, SAROORNAGAR, HYDE','','','1',0.75,'F','T','13B 2270','M','2014-01-01',9,'2014-02-20',66000,'2014-01-01',9,9270.3,0,0,0,0,'F',2,0,139.05,'2014-02-01',2500,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (745,'617938279','10','1031','MARUTHINAGAR (DIV 10)','8500','2013-07-24','SMT.L.JYOTHI','PLOT NO 37','GOUDS COLONY,EAST MARUTHINAGAR','','500060','1',0.75,'F','T','12-b-54843','M','2014-01-01',18,'2014-02-14',125000,'2014-01-01',18,-9.7,0,0,0,0,'F',4,0,0,'2014-02-23',2000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (746,'617938289','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-07-20','S.V .R KRISHNA PRASAD','P NO.16, MIG, PH- V','S F COLONY, VANASTHALIPURAM','','','1',0.5,'F','T','13B 1955','U','2014-01-01',15,'2013-07-20',0,'2013-06-01',0,627,0,0,0,0,'F',0,0,0,'2013-11-09',1883,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (749,'617938714','10','0241','SAROORNAGAR','8500','2013-07-25','T.RAMADASU','PLOT NO-15, KAKATIYA COLO','STREET NO-3,   BESIDE H.NO:-3-','','','1',0.5,'F','T','13 B 26114','L','2014-01-01',15,'2014-01-15',90000,'2013-12-01',15,2502.5,627.5,0,0,0,'F',1,0,37.54,'2013-10-31',1250,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (750,'617938878','10','0244','ALKAPURI','8500','2013-07-20','PRAKASH CHOUDARY','PLOT NO 244','BAHADUR GUDA,L B NAGAR','','','1',0.5,'F','T','13B 63527','U','2014-01-01',16,'2013-07-20',0,'2013-06-01',0,4489.7,0,0,0,0,'F',4,0,67.35,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (751,'617939606','15','1513','GACHIBOWLI (DIV 15)','8500','2013-07-24','P.KRISHNA REDDY','1-31/A','NALLAGANDLA(V)SERILINGAMPALLY','','','1',0.5,'F','T','13 B 86829','L','2013-10-01',15,'2013-07-24',0,'2013-06-01',0,0,2510,0,0,0,'F',3,0,0,'2013-11-18',2510,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (752,'617939611','15','1513','GACHIBOWLI (DIV 15)','8500','2013-07-24','M PADMAVATHI','2-52/A/2','GPRA BACKSIDE,INDRA NAGAR','','','1',0.5,'F','T','13 B 19622','L','2013-10-01',15,'2013-07-24',0,'2013-06-01',0,0,2510,0,0,0,'F',1,0,0,'2013-11-20',2510,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (753,'617939626','15','1513','GACHIBOWLI (DIV 15)','8500','2013-07-24','J D RAMESH','2-52/A/3','GPRA BACK SIDE,INDRA NAGAR','','','1',0.5,'F','T','13B 3861','L','2013-10-01',15,'2013-07-24',0,'2013-06-01',0,0,2510,0,0,0,'F',4,0,0,'2014-01-17',2510,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (754,'617939651','15','1513','GACHIBOWLI (DIV 15)','8500','2013-07-20','C.V.SATYALAKSHMI','PLOT-71','SRI SAI HOUSING COLONY, GOWLID','','500008','1',0.5,'F','T','13 B 10570','L','2013-12-01',15,'2013-07-20',0,'2013-06-01',0,0,3765,0,0,0,'F',1,0,0,'2014-01-25',3765,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (755,'617939941','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-07-29','G. SHOBHA','PLOT NO. 32','NEAR RAMALAYAM','','','1',0.5,'F','T','13B 54643','M','2014-01-01',5,'2014-02-19',20000,'2014-01-01',5,628.5,0,0,0,0,'F',0,0,0,'2014-01-31',632,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (756,'617939956','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-07-25','K.KINNARA','8-6-996/B','NEW  VENKATA RAMANA COLONY','','','1',0.5,'F','T','12B 45642','U','2014-01-01',15,'2013-07-25',0,'2013-06-01',0,4392.5,0,0,0,0,'F',0,0,65.89,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (757,'617940211','13','1322','SAINATHPURAM','8500','2013-07-12','SATHELLI NAGAMANI','30-220/21','OLD SAFILGUDA','','','1',0.5,'F','T','B 13043901','L','2014-01-01',15,'2013-07-12',0,'2013-06-01',0,4392.5,4392.5,0,0,0,'F',1,0,65.89,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (758,'617940411','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-07-15','L NAROTHAM REDDY','PLOT NO=92','A.P.S.E.B COLONY','','500079','1',0.5,'F','T','13B 20125','M','2014-01-01',11,'2014-02-20',99000,'2014-01-01',11,4527.27,0,0,0,0,'F',1,0,66.62,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (759,'617940423','05','0535','RAMANTHAPUR (DIV 5)','8500','2013-07-05','SMT.B.SHARADA','HNO.2-3-646/1/3','PREM NAGAR,AMBERPET','','','1',0.5,'F','T','13B 21216','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,25655,0,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (760,'617940659','07','0732','TARNAKA','8500','2013-07-31','P.SRIDHAR','12-13-677/8','KIMTEECOLONY','','','1',0.75,'F','T','NX-13-1619','M','2014-01-01',20,'2014-02-06',108000,'2014-01-01',20,12375.7,0,0,0,0,'F',1,0,179.85,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (761,'617940712','06','0631','YELLAREDDYGUDA','8500','2013-07-21','KHAJA NIZAMUDDIN','8-3-833/40','KAMALAPURI COLONY,PHASE-1,HYDE','','','2',0.75,'F','T','13B 1957','M','2013-06-01',50,'2013-07-21',0,'2013-06-01',0,0,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (762,'617940961','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-07-28','K..ARCHANA','8-6-996/A','VENKAT RAMANA COLONY','','','1',0.5,'F','T','12 B 45639','U','2014-01-01',15,'2013-07-28',0,'2013-06-01',0,4392.5,0,0,0,0,'F',0,0,65.89,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (763,'617940979','09','0917','BHAGYANAGAR','8500','2013-07-17','N.RAMA DEVI','PLOT NO-46C','ADDAGUTTA CO-OP HOUSING SOCIET','','','1',0.75,'F','T','13B 2243','M','2014-01-01',45,'2014-02-11',220000,'2014-01-01',45,0,0,0,0,0,'F',6,0,0,'2014-02-11',1240,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (767,'617941480','09','0917','BHAGYANAGAR','8500','2013-07-23','V.UMA DEVI','5-3-418/9/B PLOT NO.9/A','SHESHADRI NAGAR,BHAGYA NAGAR,K','','','1',0.5,'F','T','13B 20132','R','2014-01-01',21,'0001-01-01',0,'0001-01-01',21,3625.1,0,0,0,0,'F',1,0,54.38,'2013-11-04',2760,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (768,'617941666','15','0614','MADHAPUR','8500','2013-07-28','M SRINIVASA RAO','P.NO.69&70A','SRIRAM NAGAR,KONDAPUR','','','1',0.5,'F','T','13B 20069','L','2014-01-01',15,'2013-07-28',0,'2013-06-01',0,2512.5,4392.5,0,0,0,'F',1,0,37.69,'2013-11-23',1880,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (769,'617941838','02','0213','MOOSARAMBAGH','8500','2013-08-01','VILTAPURAM SAI CHANDRA GOUD','16-11-741/C/A/15/1','S.B.H. COLONY,MOOSARAM BAGH','','','1',0.5,'F','T','57623','L','2014-01-01',15,'2013-08-01',0,'2013-07-01',0,3830.89,3765,0,0,0,'F',0,0,56.48,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (770,'617942121','06','0611','JUBILEE HILLS','8500','2013-08-03','G.V.V.VINAYAK','PLOT NO 15, TYPE A','FILMNAGAR PH II','','','1',0.5,'F','T','MA134190','M','2014-01-01',8,'2014-02-19',225000,'2014-01-01',8,627,0,0,0,0,'F',3,0,0,'2014-01-27',822,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (771,'617942156','06','0611','JUBILEE HILLS','8500','2013-07-27','SURESH CHUKKAPALLI AND OTHERS','8-2-293/82/F/A-66','ROAD.NO.13, FILMNAG R','','500033','2',0.75,'F','T','2013B200006','M','2014-01-01',10,'2014-02-05',228000,'2014-01-01',10,0,0,0,0,0,'F',5,0,0,'2014-02-15',1843,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (772,'617942560','14','1422','UPPAL','8500','2013-07-17','G.ILAIAH','2-14-1/A','BEERAPPA GADA','','','1',0.5,'F','T','SLUM','M','2013-08-01',6,'2013-09-12',11000,'2013-08-01',6,0,0,0,0,0,'F',3,0,0,'2014-01-20',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (773,'617942830','10','0261','L.B.NAGAR','8500','2013-07-20','SMT NOONE SARITHA','PLOT NO.2','BANDLAGUDA VILLAGE','','','1',0.5,'F','T','13B 1943','M','2013-12-01',15,'2014-01-28',90000,'2013-12-01',15,-5,0,0,0,0,'F',0,0,0,'2014-02-21',3770,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (774,'617943800','09','0915','KPHB','8500','2013-08-05','NAJANA VENKATA RAMANA','MIG-394','BALAJI NAGAR HOUSING BOARD KUK','','','1',0.75,'F','T','NX 13 2001','M','2014-01-01',47,'2014-02-22',100000,'2014-01-01',47,18345,0,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (775,'617943884','09','0917','BHAGYANAGAR','8500','2013-07-21','M.BHUVANESWARI','3-3-77','BAGHAMEERI KUKATPALLY','','','1',0.5,'F','T','13 B 19488','R','2014-01-01',21,'0001-01-01',0,'0001-01-01',21,6417.76,0,0,0,0,'F',4,0,95.05,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (776,'617943903','09','0915','KPHB','8500','2013-08-03','M.SUJATHA','LIG 544','PHASE 7,KPHB COLONY','','','1',0.5,'F','T','13 B 19491','M','2014-01-01',30,'2014-02-15',190000,'2014-01-01',30,1355,0,0,0,0,'F',4,0,0,'2014-02-17',870,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (777,'617944832','09','0913','HASMATHPET','8500','2013-08-04','R.MOHAN RAO AND OTHERS','8-7-177/22/A,(OLD NO:5-5','SWARNADHAMA NAGAR,OLD  BOWENPA','','','2',0.75,'F','T','13B 3846','M','2014-01-01',7,'2014-02-21',60000,'2014-01-01',7,19803,0,0,0,0,'F',9,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (779,'617944867','09','0913','HASMATHPET','8500','2013-08-07','I.PADMA KUMARI','8-7-178/23','SWARNADHAMA NAGAR,OLD BOWENPAL','','','1',0.5,'F','T','13B  3678','M','2014-01-01',10,'2014-02-20',67000,'2014-01-01',10,627,0,0,0,0,'F',2,0,0,'2014-02-04',3138,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (780,'617944887','09','0913','HASMATHPET','8500','2013-08-07','MANGAL UTTAM MANE','8-7-177/9, OLD NO:7-177/1','SWARNADHAMA NAGAR,OLD BOWENPAL','','','1',0.5,'F','T','13B 3644','M','2014-01-01',11,'2014-02-18',70000,'2014-01-01',11,3765,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (781,'617944892','09','0913','HASMATHPET','8500','2013-08-08','P.RAVI KUMAR','8-7-177/48/10/1','SWARNADHAMA NAGAR,OLD  BOWENPA','','','1',0.5,'F','T','13B 4844','M','2014-01-01',10,'2014-02-20',67000,'2014-01-01',10,0,0,0,0,0,'F',2,0,0,'2014-02-27',627.5,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (785,'617944975','09','0913','HASMATHPET','8500','2013-08-16','BABAN SAWANT','8-7-177/22, OLD NO:5-55/2','SWARNADHAMA NAGAR,OLD BOWENPAL','','','1',0.5,'F','T','13B 2128','M','2014-01-01',11,'2014-02-19',70000,'2014-01-01',11,625,0,0,0,0,'F',3,0,0,'2014-02-03',3140,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (787,'617944995','09','0913','HASMATHPET','8500','2013-08-16','Y.CHANDRA REEDY','8-7-177/84','SWARNADHAMA NAGAR,OLD BOWENPAL','','','1',0.5,'F','T','13B 2627','M','2014-01-01',11,'2014-02-18',70000,'2014-01-01',11,3765,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (788,'617945446','10','0241','SAROORNAGAR','8500','2013-08-18','M.MADHAVA RAO','PLOT NO.9','S.B.H.COLONY-3,BAHADURGUDA,SAR','','','1',0.5,'F','T','13B 67112','L','2014-01-01',14,'2014-01-07',74000,'2013-12-01',14,3765,627.5,0,0,0,'F',2,0,56.48,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (789,'617945451','10','0241','SAROORNAGAR','8500','2013-08-18','K.MEENA WIFE OF JEETHENDRA','10-3-135/1','LINGOJIGUDA,SAROORNAGAR','','','1',0.5,'F','T','13a2115232','M','2014-01-01',9,'2014-02-20',21000,'2014-01-01',9,3765,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (790,'617945504','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-08-03','C.SRIDEVI','PLOT NO.810','PRASHANTHI NAGAR COLONY','','','1',0.5,'F','T','13B 20051','M','2014-01-01',28,'2014-02-15',153000,'2014-01-01',28,2484.7,0,0,0,0,'F',0,0,37.27,'2013-11-20',2030,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (791,'617945627','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-08-07','A.KAVITHA','PLOT NO. 84,PH-I','F C I COLONY,VANASTHALI PURAM','','500070','1',0.75,'F','T','13B 2919','M','2014-01-01',31,'2014-02-17',122000,'2014-01-01',31,10469.3,0,0,0,0,'F',4,0,155.5,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (792,'617946177','10','0243','AUTONAGAR','8500','2013-08-20','G .JHANSI','PLOT NO .63&64','SHARADHANAGAR  VANASTHALIPURAM','','','1',0.5,'F','T','13b6665','M','2014-01-01',27,'2014-02-11',111000,'2014-01-01',27,-0.4,0,0,0,0,'F',0,0,0,'2014-02-19',1211,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (793,'617946236','10','0261','L.B.NAGAR','8500','2013-08-06','P.SURESH KUMAR','PLOT NO.45','MALLIKARJUNANAGAR,MANSOORAAD','','','1',0.5,'F','T','5678','M','2014-01-01',21,'2014-02-17',144000,'2014-01-01',21,919.2,0,0,0,0,'F',0,0,0,'2014-01-24',673,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (794,'617946759','04','0432','RED HILLS LOW LEVEL','8500','2013-07-25','M.ASHOK KUMAR','11-1-172','AGAPURA','','','1',0.5,'F','T','SLUM','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,4448.98,0,0,0,0,'F',0,0,65.89,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (795,'617947948','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-08-05','PRUDVI ENGINEERING DEVELOPERS','PLOT NO. 273 & 274','PRASHANTH NAGAR','','','2',0.75,'F','T','13B 2639','M','2014-01-01',81,'2014-02-16',336000,'2014-01-01',81,18502,0,0,0,0,'F',8,0,271.53,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (797,'617948542','10','1031','MARUTHINAGAR (DIV 10)','8500','2013-08-10','KAHAILASH CHAND MAHESHWARI AND OTHERS','HNO.5-25/2,PLOT NO.13','MARUTHINAGAR,KOTHAPET','','','1',0.5,'F','T','13B-1456','M','2013-12-01',14,'2014-01-23',74000,'2013-12-01',14,1247.5,0,0,0,0,'F',0,0,18.71,'2013-12-13',1890,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (798,'617949172','09','0911','MOOSAPET','8500','2013-08-21','V.SATTI RAJU AND V.SUCHITRA','12-6-23/6/4/1,PLOT NO.27','SHIVASHAKTI NAGAR,MOOSAPET,KUK','','','2',0.75,'F','T','13B 2264','M','2014-01-01',10,'2014-02-15',147000,'2014-01-01',10,0,0,0,0,0,'F',8,0,0,'2014-02-26',17616,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (799,'617949475','10','0261','L.B.NAGAR','8500','2013-08-24','S.RAVINDER REDDY','PLOT NO.34 & 35','VENKATARAMANA COLONY,MANSOORAB','','','1',0.5,'F','T','13-B 32015','R','2014-01-01',18,'0001-01-01',0,'0001-01-01',0,0.4,0,0,0,0,'F',0,0,0,'2014-02-02',4202,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (800,'617949480','10','0261','L.B.NAGAR','8500','2013-08-21','D.ALIVELU WIFE OF RAMAIAH','2-3-409/A,PLOT NO.9','SAINAGAR COLONY,NAGOLE','','','1',0.5,'F','T','6129','M','2014-01-01',11,'2014-02-14',87000,'2014-01-01',11,3368,0,0,0,0,'F',0,0,50.52,'2013-11-13',425,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (801,'617949940','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-08-23','VEMULA RAJESHWER RAO','PLOT NO. 102','F.C.I. COLONY','','','1',0.5,'F','T','13-B-26126','U','2014-01-01',17,'2013-08-23',0,'2013-07-01',0,725,0,0,0,0,'F',0,0,0,'2014-01-20',3283,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (805,'617950480','03','0342','KARWAN','8500','2013-08-03','MOHAMMED MASTAN','HNO.13-6-429','MOGHAL KA NALA','','','1',0.5,'F','T','07802051','M','2013-12-01',6,'2014-01-20',38000,'2013-12-01',6,3146.91,0,0,0,0,'F',2,0,47.06,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (806,'617950762','03','0341','OLD MALLEPALLY','8500','2013-08-16','MR.MOHAMMED AMEENUDDIN','HNO.12-1-583&587 TO 590/A','SYED ALI GUDA,ASIFNAGAR','','','1',0.75,'F','T','12705981','M','2013-12-01',10,'2014-01-20',65000,'2013-12-01',10,1710.5,0,0,0,0,'F',4,0,0,'2014-02-04',1715,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (807,'617951115','15','0614','MADHAPUR','8500','2013-08-04','MAN BAHADUR','1-57/511 PLOT NO.511','SREERAMNAGAR,KONDAPUR','','','1',0.5,'F','T','13a22503','L','2014-01-01',15,'2013-08-04',0,'2013-07-01',0,22154.9,21990,0,0,0,'F',6,0,329.85,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (808,'617951135','15','0614','MADHAPUR','8500','2013-08-17','G NARSIMHA REDDY','P.NO.12,SY.NO.47,48&49','RAIDURGPAIGAH  VILLAGE','','','1',0.5,'F','T','13g35031','M','2014-01-01',15,'2014-02-24',30000,'2014-01-01',15,22099.9,0,0,0,0,'F',6,0,329.85,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (809,'617951140','15','0614','MADHAPUR','8500','2013-08-18','K MADHURI','1-70/1','GACHIBOWLI VILLAGE','','','1',0.5,'F','T','13b8271','M','2013-11-01',6,'2013-12-10',24000,'2013-11-01',6,-1000,0,0,0,0,'F',4,0,0,'2014-02-07',1000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (810,'617951155','15','0614','MADHAPUR','8500','2013-08-17','SMT.V.VENKATA LAXMI','2-56/9/G/1','IZZATHNAGAR','','','1',0.5,'F','T','13a22602','L','2013-10-01',15,'2013-08-17',0,'2013-07-01',0,1882.5,1882.5,0,0,0,'F',1,0,28.24,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (811,'617951160','15','0614','MADHAPUR','8500','2013-08-18','MORISETTY SRINIVAS','PLOT.NO.135 SY.NO.88/1,89','SUDHARSHAN NAGAR SERILINGAMPAL','','','1',0.5,'F','T','13a33918','L','2014-01-01',15,'2013-08-18',0,'2013-07-01',0,1882.5,3765,0,0,0,'F',3,0,0,'2013-12-16',627.5,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (812,'617951175','15','0614','MADHAPUR','8500','2013-08-20','SHAIK YOUSUF','1-64','MASEED BANDA,KONDAPUR','','','1',0.5,'F','T','13g34890','L','2013-09-01',15,'2013-08-20',0,'2013-07-01',0,1255,1255,0,0,0,'F',1,0,18.83,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (813,'617951607','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-08-10','B.SRILATHA','PLOT NO.A/272 PART','GREEN PARKK COLONY','','','1',0.5,'F','T','g25689','M','2014-01-01',15,'2014-02-16',150000,'2014-01-01',15,1255,0,0,0,0,'F',3,0,0,'2013-12-26',2510,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (815,'617951710','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-08-10','M. GOPI KRISHNA REDDY','PLOT NO.213','F.C.I COLONY','','','1',0.5,'F','T','13B34807','U','2014-01-01',15,'2013-08-10',0,'2013-07-01',0,3765,0,0,0,0,'F',3,0,56.48,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (816,'617951740','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-08-04','M.SRIDHAR','H.NO-17-1-391/S/170','SINGARENI COLONY','','','1',0.5,'F','T','8155','M','2014-01-01',13,'2014-02-16',100000,'2014-01-01',13,3812.06,0,0,0,0,'F',0,0,56.48,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (817,'617951775','10','1031','MARUTHINAGAR (DIV 10)','8500','2013-08-03','SRI K.GOPAL RAO','1-6-397,PLOT NO.57','PHANIGIRI COLONY,KOTHAPET','','','1',0.5,'F','T','11b-2546','M','2013-12-01',12,'2014-01-22',56000,'2013-12-01',12,1039.5,0,0,0,0,'F',0,0,0,'2014-02-12',215,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (819,'617952700','05','0521','MUSHEERABAD','8500','2013-08-03','MOHD FIAZ HUSSAIN','1-6-775/1/A','ZAMISTANPUR,MUSHEERABAD HYDERA','','','1',0.5,'F','T','B1 678','M','2014-01-01',20,'2014-02-14',79000,'2014-01-01',20,0,0,0,0,0,'F',0,0,0,'2014-02-25',1741,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (820,'617953270','15','0614','MADHAPUR','8500','2013-08-24','RAFIA SULTANA','2-64/123/28','GULSHAN NAGAR,NEW PJR NAGAR,GA','','','1',0.5,'F','T','13b28744','L','2014-01-01',15,'2013-08-24',0,'2013-07-01',0,0,3765,0,0,0,'F',3,0,0,'2014-02-27',1880,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (821,'617954089','06','0611','JUBILEE HILLS','8500','2013-08-08','K.PADMA','8-2-293/82/JIII/20,PLOT N','FILM NAGAR CO-OPERATIVE  SOCIE','','','1',0.75,'F','T','13B-2287','M','2014-01-01',46,'2014-02-19',173000,'2014-01-01',46,-0.25,0,0,0,0,'F',3,0,0,'2014-02-26',11903,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (822,'617954102','06','0611','JUBILEE HILLS','8500','2013-08-16','KOTTEUMAPATHIREDDY','8-2-293/82/F/III/462','SHAIKPET VILLAG','','','1',0.5,'F','T','13g35041','M','2014-01-01',10,'2014-02-21',14000,'2014-01-01',10,-3,0,0,0,0,'F',0,0,0,'2014-02-25',6570,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (823,'617955001','03','0311','TOLI CHOWK','8500','2013-08-18','G MURALIDHAR RAJU','8-1-284/OU/343','O U COLONY, SHAIKPET, HYDERABA','','','1',0.5,'F','T','107','M','2014-01-01',12,'2014-02-26',60000,'2014-01-01',12,627,0,0,0,0,'F',4,0,0,'2014-02-12',1883,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (824,'617955021','03','0311','TOLI CHOWK','8500','2013-08-28','MIR RASHEED ALI','8-1-423/A/184','DIAMOND HILLS, SHAIKPET','','','1',0.5,'F','T','94517','U','2014-01-01',8,'2013-10-17',15000,'2013-09-01',8,3812.06,0,0,0,0,'F',2,0,56.48,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (825,'617955250','09','0911','MOOSAPET','8500','2013-07-20','SRI.N.SATYANARAYANA','HNO.14-1-90/433','GAYATHRINAGAR ALLAPUR','','','1',0.75,'F','T','NX-13-1500','M','2014-01-01',33,'2014-02-19',90000,'2014-01-01',33,34160,0,0,0,0,'F',8,0,512.4,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (827,'617955342','09','0913','HASMATHPET','8500','2013-08-29','RAJINI SURYANARAYANA&SRINIVASA SURYANARAYANA','8-7-30/B,OLDNO5-41/93,PNO','R.R.NAGAR,OLD BOWENPALLY','','','1',0.75,'F','T','13B 4648','M','2014-01-01',10,'2014-02-21',130000,'2014-01-01',10,10277.4,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (829,'617955924','14','1422','UPPAL','8500','2013-08-05','RAKESH KUMAR SHARMA','2-2-129/5/A','VIJAYPURI COLONY','','','1',0.5,'F','T','13t50751','M','2014-01-01',9,'2014-02-20',9000,'2014-01-01',9,1255,0,0,0,0,'F',0,0,0,'2014-01-11',2510,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (830,'617956166','02','0213','MOOSARAMBAGH','8500','2013-08-19','RAGHUVARANGANDE','16-11-511/D/25','SHALIVAHANA NAGAR','','500036','1',0.5,'F','T','13-A-34010','M','2014-01-01',41,'2014-02-19',179000,'2014-01-01',41,8807.4,0,0,0,0,'F',2,0,131.08,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (831,'617956341','15','0614','MADHAPUR','8500','2013-09-02','YOUSUF BEE','1-112/36','KONDAPUR W/S COLONY,KONDAPUR','','','1',0.5,'F','T','13B 32572','M','2014-01-01',1,'2014-02-19',16000,'2014-01-01',1,3156.33,0,0,0,0,'F',4,0,47.06,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (832,'617956356','15','0614','MADHAPUR','8500','2013-09-02','M VIJAYA LAXMI','1-3/2/D/5','MASEED BANDA,KONDAPUR','','','1',0.5,'F','T','13B 32551','M','2014-01-01',10,'2014-02-20',50000,'2014-01-01',10,15379.2,0,0,0,0,'F',5,0,229.31,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (841,'617956714','09','0915','KPHB','8500','2013-08-23','VITTALDURGAM','16-2-67, PLOT NO 89','CBCID COLONY','','500085','1',0.75,'F','T','NX-12-4312','M','2014-01-01',34,'2014-02-15',243000,'2014-01-01',34,25635,0,0,0,0,'F',7,0,384.53,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (843,'617957105','06','0611','JUBILEE HILLS','8500','2013-09-04','C.L.N HANUMANTH RAO','8-3-231/W/56/1  PLOT NO 5','WOMENS CO-OP SOCIETY','','','2',0.75,'F','T','NX-13.1704','M','2014-01-01',20,'2014-02-05',94000,'2014-01-01',20,9680,0,0,0,0,'F',8,0,145.2,'2013-12-02',5000,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (844,'617957222','04','0431','RED HILLS HIGH LEVEL','8500','2013-07-20','S.RENUKA BAI','11-4-127','BAZAARGHAT','','','1',0.5,'F','T','SLUM','M','2013-06-01',15,'2013-07-20',0,'2013-06-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (845,'617957273','01','0121','DHOOD BOWLI','8500','2013-09-03','NAFEESA UNNISA BEGUM','19-1-1084/37/A','BANDLA GUDA DOODHBOWLI','','500064','1',0.5,'F','T','SLUM','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,881.5,0,0,0,0,'F',1,0,0,'2014-02-11',1000,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (846,'617957298','01','0111','BAHADURPURA','8500','2013-08-26','MOHAMMED FAROOQ','4-24-85','HASSAN NAGAR','','','1',0.5,'F','T','','U','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,3765,0,0,0,0,'F',0,0,56.48,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (847,'617957306','01','0111','BAHADURPURA','8500','2013-08-29','SHAIK QUISAR AZAD','19-4-280/B/115/101','TADBAN,KHAJA PHAHAD,HYDERABAD','','','1',0.5,'F','T','SLUM','M','2013-07-01',15,'2013-08-29',0,'2013-07-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (849,'617957346','01','0111','BAHADURPURA','8500','2013-08-27','MOHAMMED AFZAL','19-5-28/8/A B/1','BAHADURA PURA','','','1',0.5,'F','T','SLUM','M','2013-07-01',15,'2013-08-27',0,'2013-07-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (850,'617957580','10','0241','SAROORNAGAR','8500','2013-09-02','A.SUDHA MADHURI','PLOT NO.44','ROAD NO:3 DHARMAPURI COLONY,LI','','','1',0.5,'F','T','13 32 684','U','2014-01-01',15,'2013-09-02',0,'2013-08-01',0,15287.5,0,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (851,'617958386','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-09-01','M. RAMAKRISHNA REDDY','1-5-1015/154','MANJEERA NAGAR COLONY','','','1',0.75,'F','T','13G 2718','M','2014-01-01',23,'2014-02-04',82000,'2014-01-01',23,0.5,0,0,0,0,'F',4,0,0,'2014-02-25',1712,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (852,'617958414','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-09-01','B. VENKATESHWAR RAO','1-5-1095/2','MANGAPURAM COLONY','','','1',0.5,'F','T','12043361','L','2013-11-01',15,'2013-09-01',0,'2013-08-01',0,-17.5,1882.5,0,0,0,'F',1,0,0,'2014-01-31',1900,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (853,'617958819','13','1321','DEFENCE COLONY','8500','2013-08-26','MRS.CH.SUJALA','HNO.30-647/12/4/A','OLD SAFILGUDA,MALKAJGIRI,R.R.D','','','1',0.5,'F','T','13A 14381','L','2014-01-01',15,'2013-08-26',0,'2013-07-01',0,628,3765,0,0,0,'F',0,0,0,'2014-02-10',627,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (854,'617959113','03','0311','TOLI CHOWK','8500','2013-08-28','MR.GULAM DASTAGEER','8-1-423/A/140','DIAMOND HILLS','','','1',0.5,'F','T','84132','U','2014-01-01',15,'2013-08-28',0,'2013-07-01',0,3765,0,0,0,0,'F',1,0,56.48,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (855,'617959423','10','0243','AUTONAGAR','8500','2013-09-02','SMT. M. VIJAYA','PLOT NO.56, PADMAVATHI CO','HAYATHNAGAR, HYDERABAD.','','','1',0.5,'F','T','13h41515','M','2013-12-01',14,'2014-01-21',30000,'2013-12-01',14,630,0,0,0,0,'F',0,0,0,'2013-12-12',1880,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (856,'617959434','10','0261','L.B.NAGAR','8500','2013-09-06','G.VIJAYA LAXMI','PLOT NO.31','PADMAVATHI NAGAR COLONY,MANSOO','','','1',0.5,'F','T','13-B-22561','L','2014-01-01',17,'2013-09-06',0,'2013-08-01',0,724.5,3380.5,0,0,0,'F',0,0,0,'2014-01-23',2656,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (857,'617959540','09','0917','BHAGYANAGAR','8500','2013-08-21','M. PUNYAVATHI','3-3-10/1, PLOT NO: 12','BAGH AMEERI, KUKATPALLY','','','1',0.5,'F','T','13B 31923','R','2014-01-01',21,'0001-01-01',0,'0001-01-01',21,1838.4,0,0,0,0,'F',4,0,0,'2013-12-30',1833,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (858,'617959638','09','0917','BHAGYANAGAR','8500','2013-08-08','BHAWARLAL','5-35/332, PLOT NO-69','MAITHRINAGAR, KUKATPALLY','','','1',0.5,'F','T','13A-22110','M','2014-01-01',32,'2014-02-22',32000,'2014-01-01',32,5401.2,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (859,'617960268','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-09-03','V.VIJAYA BABU','PLOT NO.61,SURVEY NO.55 &','SADGURU NAGAR,ROAD NO.2','','','1',0.75,'F','T','13-B-25720','M','2014-01-01',14,'2014-02-25',121000,'2014-01-01',14,11872.9,0,0,0,0,'F',3,0,178.09,'2014-02-15',4500,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (860,'617960676','09','0911','MOOSAPET','8500','2013-09-04','CH.KRISHNA  REDDY','12-7-45/1/5/6/A, PLOT NO.','MAHESHWARI NAGAR,BHARATH NAGAR','','','1',0.5,'F','T','13.G.35090','M','2013-12-01',4,'2014-01-16',15000,'2013-12-01',4,17090,0,0,0,0,'F',7,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (861,'617961017','14','1422','UPPAL','8500','2013-09-04','SUNNAM RAMCHANDER','2-19-78/13','KALYANPURI,HIGHCOURT COLONY','','500039','1',0.5,'F','T','13B 42989','M','2013-12-01',5,'2014-01-30',20000,'2013-12-01',5,0,0,0,0,0,'F',1,0,0,'2014-02-13',2510,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (862,'617961022','14','1422','UPPAL','8500','2013-09-04','C.RAJYALAXMI','PLOT NO 21','HIGH COURT COLONY','','','1',0.5,'F','T','13B 42986','M','2013-12-01',4,'2014-01-30',15000,'2013-12-01',4,0,0,0,0,0,'F',2,0,0,'2014-02-12',2510,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (863,'617961097','14','1422','UPPAL','8500','2013-09-01','VIKRAMADITYAREDDYYALALA','PLOT NO-112','HIGH COURT COLONY','','500039','1',0.5,'F','T','13B 42988','M','2013-08-01',15,'2013-09-01',0,'2013-08-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (864,'617961105','14','1422','UPPAL','8500','2013-09-01','TSHEELA DEVI','2-19-78/45','HIGH COURT COLONY,KALYANPURI,U','','500039','1',0.5,'F','T','13B 32948','M','2013-12-01',10,'2014-01-24',56000,'2013-12-01',10,-0.4,0,0,0,0,'F',2,0,0,'2014-02-03',628,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (865,'617961168','14','1421','HUBSIGUDA','8500','2013-09-07','MARREDDY BHARGAV RAHULREDDY','1-5-53/P/138','V.V.NAGAR','','','1',0.5,'F','T','2013-6269','M','2014-01-01',7,'2014-02-20',146000,'2014-01-01',7,627.75,0,0,0,0,'F',3,0,0,'2014-01-23',622,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (866,'617961185','14','1422','UPPAL','8500','2013-09-07','SHAHU RETHESH KUMAR','PLOT NO. 45','NEW BHARATH NAGAR','','','1',0.5,'F','T','SLUM','M','2013-08-01',15,'2013-09-07',0,'2013-08-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (867,'617961316','14','1422','UPPAL','8500','2013-09-03','JHANSI RANISAMALA','2-19-78/130','HIGH COURT COLONY','','500039','1',0.5,'F','T','13B 28737','M','2013-12-01',18,'2014-01-30',74000,'2013-12-01',18,0,0,0,0,0,'F',2,0,0,'2014-02-06',3190.4,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (868,'617961321','14','1422','UPPAL','8500','2013-09-03','GANNOJI RAGAWANI','2-19-78/38/A','HIGHCOURT COLONY','','','1',0.5,'F','T','13B 28726','M','2013-12-01',4,'2014-01-30',16000,'2013-12-01',4,0,0,0,0,0,'F',3,0,0,'2014-01-31',2510,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (869,'617961356','14','1422','UPPAL','8500','2013-09-01','G.BIKSHPATHI REDDY','2-19-78/88','KALYANPURI,HIGHCOURT COLONY','','500039','1',0.5,'F','T','13G 32653','M','2013-12-01',12,'2014-01-30',48000,'2013-12-01',12,0,0,0,0,0,'F',2,0,0,'2014-02-10',2510,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (870,'617961361','14','1422','UPPAL','8500','2013-09-02','N.VENKATESHWARLU','2-19-78/69','KALYANPURI,HIGHCOURT COLONY','','500039','1',0.5,'F','T','13g 32636','M','2013-12-01',12,'2014-01-30',46000,'2013-12-01',12,-1,0,0,0,0,'F',1,0,0,'2014-02-17',2511,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (871,'617961376','14','1422','UPPAL','8500','2013-09-02','JEEVANREDDYMAMIDI','PLOT NO-106','HIGH COURT COLONY','','500039','1',0.5,'F','T','13B 32648','M','2013-08-01',15,'2013-09-02',0,'2013-08-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (872,'617961436','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-09-07','KALLURI VINODA','1-7-100/136','SRI NAGAR COLONY, REDDY ENCLAV','','','1',0.5,'F','T','13072823','L','2013-10-01',15,'2013-09-07',0,'2013-08-01',0,1255,1255,0,0,0,'F',4,0,18.83,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (874,'617962054','10','0261','L.B.NAGAR','8500','2013-07-11','P.SHOBHA','2-3-614/C,PLOT NO.19 NORT','SAINAGAR ROA D NO.2,NAGOLE','','','1',0.5,'F','T','13 B 1816','M','2014-01-01',8,'2014-02-11',25000,'2014-01-01',8,4392.5,0,0,0,0,'F',0,0,65.89,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (875,'617962127','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-08-01','DR.G.RAVI','11-13-126/3,','PADMAVATHI NAGAR','','','1',0.75,'F','T','NX-13-1417','M','2014-01-01',33,'2014-02-16',160000,'2014-01-01',33,1712.4,0,0,0,0,'F',3,0,0,'2014-01-23',1714,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (876,'617962132','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-08-02','SHILPI ALIAS MEGHANA','PLOT NO S.C.III BLOCK  U','ABYUDAYA NAGAR COLONY','','','1',0.5,'F','T','13B 32310','M','2014-01-01',14,'2014-02-17',125000,'2014-01-01',14,2562.6,0,0,0,0,'F',4,0,38.44,'2013-11-28',2952,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (877,'617962338','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-07-27','G. LALITHA','PLOT NO. 19,','LAXMI GANESH NAGAR, PHASE-II,','','','1',0.5,'F','T','13 B .32436','M','2014-01-01',8,'2014-02-25',90000,'2014-01-01',8,627.5,0,0,0,0,'F',1,0,0,'2014-02-15',3765,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (878,'617962343','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-09-18','T. SHAKUNTHALA REDDY','PLOT NO. 69 (PART)','HASTINAPURAM (NORTH), N.S. ROA','','','1',0.5,'F','T','13B 20087','M','2014-01-01',15,'2014-02-20',68000,'2014-01-01',15,627.5,0,0,0,0,'F',1,0,0,'2014-02-14',628,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (879,'617962362','10','0243','AUTONAGAR','8500','2013-02-25','ADLA  MANGAMMA','PLOT NO .60','SUSHMA SAI NAGAR VANASTHALIPUR','','','1',0.5,'F','T','13 B 43290','M','2014-01-01',12,'2014-02-23',138000,'2014-01-01',12,2510,0,0,0,0,'F',0,0,37.65,'2013-10-31',5020,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (880,'617963030','02','0231','SANTOSHNAGAR','8500','2013-07-15','DR.D.ASHOK REDDY','17-1-391/T/4','SANKESHWAR BAZAR','','','1',0.5,'F','T','13B-3027','M','2014-01-01',12,'2014-02-09',60000,'2014-01-01',12,0,0,0,0,0,'F',1,0,0,'2014-02-25',627.5,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (881,'617963218','06','0611','JUBILEE HILLS','8500','2013-09-26','SRI.V.SATYA NARAYANA RAO','PLOTNO.154-III SYNO.403/1','CO-OP H.BUILDING SOCIETY LTD R','','','1',0.5,'F','T','13B32234','M','2014-01-01',5,'2014-02-18',45000,'2014-01-01',5,627.8,0,0,0,0,'F',1,0,0,'2014-02-19',1980,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (883,'617963304','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-09-27','Y .BHARGAVI','PLOT NO .13 MIG-II PH I','VANASTHALIPURAM','','','1',0.75,'F','T','13B1332','M','2014-01-01',15,'2014-02-19',35000,'2014-01-01',15,3057.5,0,0,0,0,'F',5,0,0,'2014-01-24',2803,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (884,'617964456','03','0311','TOLI CHOWK','8500','2013-07-10','MATEEN AHMED KHAN','9-4-132/28','MAHBOOB GARDEN','','','1',0.5,'F','T','13a-31456','R','2014-01-01',14,'0001-01-01',0,'0001-01-01',14,29907.5,0,0,0,0,'F',7,0,448.61,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (885,'617967437','06','0623','ERRAGADDA','8500','2013-11-30','N.AYAILAIAH','8-4-371/B/92','SARADHI NAGAR COLONY,YOUSUFGUD','','','1',0.75,'F','T','73J3563','L','2014-01-01',50,'2013-11-30',0,'2013-10-01',0,9415.5,9415.5,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (887,'617967731','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-11-07','BANDELA SUJEEVA RAO','1-5-1002/1','CITIZEN COLONY','','','1',0.5,'F','T','12B10081','M','2013-10-01',15,'2013-11-07',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (888,'617967771','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-10-25','D CHANDRAKALA','PLOT NO.44','FATHER BALAIAH NAGAR, OLD ALWA','','500010','1',0.75,'F','T','100819','M','2013-09-01',50,'2013-10-25',0,'2013-09-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (889,'617967814','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-10-19','SRI.I.RAMI REDDY','HNO.2-4-102/2','MACHA BOLLARAM VILLAGE,ALWAL','','','1',0.5,'F','T','100819','M','2013-09-01',15,'2013-10-19',0,'2013-09-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (890,'617967934','05','0533','VIGYANPURI','8500','2013-10-11','MALLAPRAGADA SEETHA','2-1-600/1','VIDYANAGAR','','','1',0.5,'F','T','13B10891','M','2013-09-01',15,'2013-10-11',0,'2013-09-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (891,'617968052','07','0641','PRAKASHNAGAR','8500','2013-11-01','P.C.H.MARKETING PVT LTD REP BYITS DIRECTOR SR','1-11-252/11/1&1-11-252/19','BEGUMPET SEC-BAD B.PET','','500003','2',0.75,'F','T','161336','L','2014-01-01',80,'2013-11-01',0,'2013-10-01',0,21930,21930,0,0,0,'F',20,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (893,'617968108','07','0711','HUSSAINSAGAR','8500','2013-10-30','ASHWIN KUMAR KEDIA','5-1-4','OLD GHASMANDI','','','1',0.5,'F','T','9B38053','M','2014-01-01',1,'2014-02-05',5000,'2014-01-01',1,2510,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (894,'617968175','07','0722','MARREDPALLY','8500','2013-10-05','GURU PRASAD SWAMY','9-3-485 TO 487','REGIMENTAL BAZAR','','','2',0.75,'F','T','13H2958','M','2013-09-01',50,'2013-10-05',0,'2013-09-01',0,0,0,0,0,0,'F',9,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (895,'617968186','09','0917','BHAGYANAGAR','8500','2013-09-10','AKKAPALLISHANKARREDDY','PLOT.NO.42','ARUNA COOPERATIVE HOUSING SOCE','','','2',0.75,'F','T','22215-13','R','2014-01-01',1,'0001-01-01',0,'0001-01-01',1,0,0,0,0,0,'F',6,0,0,'2014-02-22',2207,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (898,'617969018','06','0631','YELLAREDDYGUDA','8500','2013-11-20','DR.A.SARSWATHI AND OTHERS','8-3-973','SRINAGAR COLONY','','','2',1,'F','T','NX13-1256','M','2014-01-01',16,'2014-02-18',21000,'2014-01-01',16,11055.8,0,0,0,0,'F',10,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (899,'617969415','01','0111','BAHADURPURA','8500','2013-09-04','TOUQEERUNNISA AHMED','19-4-438/A/20/A','BASTI NABI KAREEM TADBAN MIRAL','','','1',0.5,'F','T','04013261','M','2013-08-01',15,'2013-09-04',0,'2013-08-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (900,'617969442','13','1301','ALWAL (Div13)','8500','2013-10-02','MUFAZZAL KANCHWALA  AND  MURTAZA KANCHWALA','1-31-566/1','RAJEEV GANDHI NAGAR,','','','1',0.5,'F','T','13672943','M','2014-01-01',7,'2014-02-10',27000,'2014-01-01',7,2510,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (901,'617969462','13','1301','ALWAL (Div13)','8500','2013-10-11','N.RAJI REDDY','1-24-651/1','MARUTHI NAGAR','','','1',0.5,'F','T','1307348','M','2014-01-01',5,'2014-02-10',21000,'2014-01-01',5,12230,0,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (902,'617969570','13','1301','ALWAL (Div13)','8500','2013-11-23','K. RAVI SHANKER','30-503/1/35&36','GAYATRI NAGAR','','','1',0.5,'F','T','13073493','M','2014-01-01',9,'2014-02-10',27000,'2014-01-01',9,1882.5,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (903,'617969653','13','1301','ALWAL (Div13)','8500','2013-09-15','B ANAND KUMAR','1-32-273','GREENFIELDS ALWAL','','','1',0.5,'F','T','13072928','M','2014-01-01',6,'2014-02-10',28000,'2014-01-01',6,3137.5,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (904,'617969954','07','0724','SEETHAPALMANDI','8500','2013-12-06','DEVI BUILDERS REP M.BALA KRISHNA','12-10-295,296 & 297','SEETHAFALMANDI SECUNDERABAD','','','1',0.75,'F','T','95691','M','2014-01-01',18,'2014-02-19',37000,'2014-01-01',18,21910,0,0,0,0,'F',18,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (905,'617970485','01','0121','DHOOD BOWLI','8500','2013-11-12','MR MOHAMMED AZMATH','20-3-144/1','SHIBLIGUNJ','','','1',0.5,'F','T','13091897','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,1882.5,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (906,'617970533','01','0121','DHOOD BOWLI','8500','2013-11-07','MALEK KHERUNNISA USMAN BHAI','20-3-861/5','MOHD MIYAN LANE SHAH GUNJ','','','1',0.5,'F','T','B13076369','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,627.5,0,0,0,0,'F',0,0,0,'2014-02-26',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (907,'617970553','01','0121','DHOOD BOWLI','8500','2013-11-10','SAYEED BIN SALAM','19-1-1097/1/1','BANDAL GUDA,DOOD BOWLI','','','1',0.5,'F','T','B13167458','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,622.5,0,0,0,0,'F',1,0,0,'2014-01-24',1260,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (908,'617970588','01','0121','DHOOD BOWLI','8500','2013-10-12','MOHAMMED MAHBOOB','20-3-780/C','FAREED UD JAH BAGH,JALAL KUNCH','','','1',0.5,'F','T','','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,2510,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (909,'617970605','01','0123','PATHERGATTI','8500','2013-12-05','SANJAY SAMANTA','21-1-871/2/A','GHANSI BAZAR, RIKAB GUNJ','','','1',0.5,'F','T','14184109','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,1255,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (910,'617970614','15','1511','CHANDA NAGAR','8500','2013-11-15','K.P.VENKATESWARA RAO AND OTHER\'S','3-119/A','GANGARAM(V)SRILINGAMPALLY GHMC','','','2',0.75,'F','T','12B4220','M','2013-12-01',10,'2014-01-25',21000,'2013-12-01',10,0,0,0,0,0,'F',7,0,0,'2014-02-13',5143,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (911,'617970636','01','0121','DHOOD BOWLI','8500','2013-08-20','S.SURESH KUMAR YADAV','20-1-576/A','GOLLA KIDIKI, MULDI GUMMAS','','','1',0.5,'F','T','B13073008','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,3465,0,0,0,0,'F',2,0,0,'2014-01-10',300,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (912,'617970715','15','0932','MIYAPUR','8500','2013-09-22','GINNAPALLY KALYANI','HNO.1-42/PE/163','PRAGATHI ENCLAVE MIYAPUR','','','1',0.75,'F','T','12-B-1220','M','2014-01-01',32,'2014-02-11',140000,'2014-01-01',32,1713.5,0,0,0,0,'F',4,0,0,'2014-01-22',6851,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (913,'617971028','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-11-08','N. RAJASHEKAR','1-5-1022/A','B.R.RAO NAGAR','','','1',0.5,'F','T','13B42202','M','2013-10-01',15,'2013-11-08',0,'2013-10-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (914,'617971048','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-11-25','JUPALLY VENKATESHAM','3-2-117/9','BALAJI ENCLAVE,PHASE - 2','','','1',0.5,'F','T','13091195','M','2013-10-01',15,'2013-11-25',0,'2013-10-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (915,'617971246','06','0624','S.R.NAGAR','8500','2013-11-08','SMT.P.PADMAVATHI AND OTHERS','HNO.7-1-396/4','BALKAMPET,B.K.GUDA','','','1',0.5,'F','T','134723','R','2014-01-01',10,'0001-01-01',0,'0001-01-01',10,627.5,0,0,0,0,'F',4,0,0,'2014-02-03',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (916,'617971271','06','0624','S.R.NAGAR','8500','2013-11-10','MR.THAKUR UDAY SINGH','HNO.7-1-632/81/A','BAPU NAGAR,S.R.NAGAR','','','1',0.5,'F','T','13B2014337','M','2014-01-01',20,'2014-02-22',55000,'2014-01-01',20,2368.5,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (918,'617971677','06','0611','JUBILEE HILLS','8500','2013-11-06','JAMMULA KIRANMAYE','8-2-293/82/PN/99,PLOT NO.','PRASHASHAN NAGAR,ROAD NO.72,JU','','','1',0.5,'F','T','13G35021','M','2014-01-01',5,'2014-02-06',14000,'2014-01-01',5,0.5,0,0,0,0,'F',1,0,0,'2014-02-18',627,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (920,'617971710','06','0611','JUBILEE HILLS','8500','2013-10-23','T.PURUSHOTHAM REDDY','8-2-293/82/J/A-12','JOURNALIST COLONY A ,JUBILEE H','','','1',0.5,'F','T','13H1719','M','2014-01-01',5,'2014-02-21',23000,'2014-01-01',5,627,0,0,0,0,'F',1,0,0,'2014-01-23',1883,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (921,'617971781','09','0912','BALANAGAR','8500','2013-10-23','SRI.AJAY KUMAR GADALAY  AND OTHERS','HNO.10-5-97/1 PLOT NO.E-2','FATHENAGAR(V)BALANAGAR(M)','','','2',0.75,'F','T','13B2698','M','2013-09-01',50,'2013-10-23',0,'2013-09-01',0,0,0,0,0,0,'F',16,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (922,'617971791','09','0917','BHAGYANAGAR','8500','2013-10-23','P.SUDHAKAR REDDY','P.NO.23/PART','PRASHANTH NAGAR,HYDERNAGAR VIL','','','1',0.75,'F','T','01758-13','M','2014-01-01',15,'2014-02-13',19000,'2014-01-01',15,-0.4,0,0,0,0,'F',3,0,0,'2014-02-27',1712,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (923,'617971821','10','0241','SAROORNAGAR','8500','2013-12-07','B.KUMARA SWAMY','PLOT O.1 & 2,HNO.8-16/1/1','ALTHAF NAGAR,SAROORNAGAR','','','1',0.5,'F','T','13J44039','L','2014-01-01',15,'2013-12-07',0,'2013-11-01',0,1255,1255,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (924,'617971841','10','0241','SAROORNAGAR','8500','2013-12-02','A.UDAY KUMAR','PLOT NO.5 & 6,SY.NO.21,RO','VENKATESWARA COLONY,SAROORNAGA','','','2',0.75,'F','T','65546','M','2014-01-01',17,'2014-02-11',99000,'2014-01-01',17,7310,0,0,0,0,'F',20,0,0,'2014-02-03',7310,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (925,'617971881','10','0241','SAROORNAGAR','8500','2013-10-25','D.SAILEELA','HNO.10-1-92/3/86A&87A','JANAKI ENCLAVE,LINGOJIGUDA','','','1',0.5,'F','T','13J44619','L','2014-01-01',15,'2013-10-25',0,'2013-09-01',0,2510,2510,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (927,'617972035','07','0722','MARREDPALLY','8500','2013-12-06','MAHAVEER CHAND JAIN  OTHERS','10-2-320','VIKRAMPURI COLONY','','','2',1,'F','T','NX131165','M','2013-11-01',75,'2013-12-06',0,'2013-11-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (928,'617972059','07','0724','SEETHAPALMANDI','8500','2013-12-02','SRI.B.SWARAJ KUMAR  AND OTHERS','HNO.12-10-416/5/A','NAMALAGUNDU,SEETHAPALMANDI,SEC','','','2',0.75,'F','T','NX131220','M','2013-11-01',50,'2013-12-02',0,'2013-11-01',0,0,0,0,0,0,'F',22,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (929,'617972162','07','0714','SRINIVAS NAGAR','8500','2013-12-11','A. RAJU','12-11-198/2/B','WARSIGUDA','','','1',0.5,'F','T','13J44159','M','2013-11-01',15,'2013-12-11',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (930,'617972197','07','0714','SRINIVAS NAGAR','8500','2013-12-11','A. SATYANARAYANA','12-11-198/2/A','BRAMANA BASTI','','','1',0.5,'F','T','13H41741','M','2013-11-01',15,'2013-12-11',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (931,'617972337','02','0231','SANTOSHNAGAR','8500','2013-11-25','SYED FIRASATH ALI','17-1-128/10/A/1TO3','RAIN BAZAR','','','1',0.5,'F','T','100392','M','2013-10-01',15,'2013-11-25',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (932,'617972342','02','0231','SANTOSHNAGAR','8500','2013-11-25','ABDUL MAJEED','17-1-182/91/A','BANU NAGAR','','','1',0.5,'F','T','13203444','M','2013-10-01',15,'2013-11-25',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (933,'617972447','02','0222','ASMANGARH','8500','2013-11-20','P.NARSIMHA REDDY','16-2-751/C/4/A','TIRUMALA HILLS, ASMANGADH,GADD','','','1',0.5,'F','T','12B36053','L','2014-01-01',15,'2014-01-22',30000,'2013-12-01',15,627.5,627.5,0,0,0,'F',3,0,0,'2014-02-12',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (934,'617972469','02','0213','MOOSARAMBAGH','8500','2013-11-28','BOKKA SUDARSHAN REDDY','16-11-469','MOOSARAM BAGH','','','1',0.75,'F','T','210','M','2013-12-01',10,'2014-01-07',20000,'2013-12-01',10,3425.8,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (935,'617972470','02','0231','SANTOSHNAGAR','8500','2013-11-28','MOHAMMED YOUSUF UDDIN','17-1-196/1/A/8(PART)','DHOBIGHAT','','','1',0.5,'F','T','B-13090581','M','2013-10-01',15,'2013-11-28',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (936,'617972528','02','0231','SANTOSHNAGAR','8500','2013-12-01','A.BUCHAMMA','6-143','POCHAMMA GADDA','','','1',0.5,'F','T','13090501','M','2014-01-01',14,'2014-02-18',24000,'2014-01-01',14,1255,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (937,'617972575','02','0222','ASMANGARH','8500','2013-11-22','MOHD.MAZHAR ALI','16-2-705/1/PART-A','AKBER BAGH','','','1',0.5,'F','T','13A45025','M','2013-10-01',15,'2013-11-22',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (938,'617972603','02','0222','ASMANGARH','8500','2013-08-31','G.RAJENDER','16-2-147/65/1','MALAKPET','','','2',0.75,'F','T','13B2611','M','2013-07-01',50,'2013-08-31',0,'2013-07-01',0,0,0,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (939,'617972618','02','0222','ASMANGARH','8500','2013-11-20','V.APPARAO','16-738/E/11&12','ASMANGADH','','','1',0.5,'F','T','13144621','M','2014-01-01',7,'2014-02-15',10000,'2014-01-01',7,-0.5,0,0,0,0,'F',2,0,0,'2014-02-18',1883,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (940,'617972814','06','0611','JUBILEE HILLS','8500','2013-12-01','Y.MURALIDHARY.KIRTHI KRISHNA','8-2-293/82/A/321/A/16','ROAD NO 25,JUBILEE HILLS,HYDER','','','1',0.5,'F','T','13B44602','M','2014-01-01',15,'2014-02-22',30000,'2014-01-01',15,1255,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (941,'617972849','06','0611','JUBILEE HILLS','8500','2013-11-26','ANIL GAGGAR AND OTHERS','PLOT NO.1075','ROAD NO.44,JUBILEE HILLS,HYD','','','2',0.75,'F','T','N8131313','M','2014-01-01',5,'2014-02-05',25000,'2014-01-01',5,5527.5,0,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (942,'617972917','06','0611','JUBILEE HILLS','8500','2013-12-10','BOLLINENI SWAROOPA RANI','162-III','73','','500033','1',0.75,'F','T','NX131319550','M','2014-01-01',5,'2014-02-17',15000,'2014-01-01',5,3425.8,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (943,'617972922','06','0611','JUBILEE HILLS','8500','2013-12-08','G.V.PRABHUCHARAN RAO','8-2-293/82/NL/247','M.L.A\'S & M.P\'S COLONY,JUBILEE','','','2',0.75,'F','T','13J36654','M','2014-01-01',17,'2014-02-06',50000,'2014-01-01',17,3685,0,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (944,'617973011','06','0611','JUBILEE HILLS','8500','2013-10-25','SRI K.V.S.CHALAPATHI RAO','8-2-293/82/JIII/PLOT-550/','ROAD NO.92,JUBILEE HILLS,HYDER','','','1',0.75,'F','T','13H2989','M','2014-01-01',6,'2014-02-19',26000,'2014-01-01',6,1851.6,0,0,0,0,'F',3,0,0,'2014-01-31',5000,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (946,'617973483','14','1411','RADHIKA','8500','2013-12-05','MR. B. RAMBABU','PLOT NO.109-B','ESHWARIPURI COLONY, KAPRA','','','1',0.5,'F','T','13A45456','M','2013-11-01',15,'2013-12-05',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (947,'617973511','14','1411','RADHIKA','8500','2013-09-20','KOMARRAJU UMAMAHESWARA RAO','1-10-28/231/14&15','SHIVA SAI NAGAR','','','1',0.5,'F','T','13A45457','M','2013-08-01',15,'2013-09-20',0,'2013-08-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (949,'617973586','14','1411','RADHIKA','8500','2013-11-18','MADHUMATHI','PLOT.NO.4','VIJAYAPURI COLONY','','','1',0.5,'F','T','13073043','M','2013-10-01',15,'2013-11-18',0,'2013-10-01',0,-425,0,0,0,0,'F',3,0,0,'2014-02-19',213,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (950,'617973692','10','0261','L.B.NAGAR','8500','2013-09-05','M.SURANJANA','P.NO.26','VIJAYASRI COLONY','','','1',0.5,'F','T','13B20198','L','2014-01-01',15,'2013-09-05',0,'2013-08-01',0,3137.5,3137.5,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (952,'617973843','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-11-05','N.VASUMATHI DEVI','H.NO:-17-1-382/SN/41','BALAJI NAGAR, CHAMPAPET','','','1',0.5,'F','T','13I 44774','M','2014-01-01',13,'2014-02-16',39000,'2014-01-01',13,1882.5,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (953,'617973858','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-11-05','CH.NARAYANA CHARYULU','PLOT NO.416','SINGARENI COLONY,','','','1',0.5,'F','T','13 I 44762','M','2014-01-01',14,'2014-02-15',42000,'2014-01-01',14,1882.5,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (954,'617974010','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-10-15','CHERUKURI GOPINATH','PLOT NO. 458','HARIHARAPURAM','','','2',0.75,'F','T','1353485','M','2013-09-01',50,'2013-10-15',0,'2013-09-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (955,'617974040','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-10-15','DR.G.RAMAKRISHNA','17-1-391/S/361,PLOT NO.36','SINGARENI COLONY,CHAMPAPET','','','1',0.5,'F','T','06062781','M','2014-01-01',14,'2014-02-15',44000,'2014-01-01',14,2510,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (956,'617974097','14','1411','RADHIKA','8500','2013-10-03','DHEERAVATH  NANDU NAIK','1-10-1/71/82','KRISHNA REDDY NAGAR','','','1',0.5,'F','T','WRCS','M','2013-09-01',15,'2013-10-03',0,'2013-09-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (957,'617974200','10','0243','AUTONAGAR','8500','2013-10-04','N.SUDHAKAR','PLOT.NO.206','SHARADA NAGAR COLONY','','','2',0.75,'F','T','13 H 2965','M','2014-01-01',16,'2014-02-11',74000,'2014-01-01',16,-14,0,0,0,0,'F',8,0,0,'2014-02-26',2950,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (958,'617974268','14','1411','RADHIKA','8500','2013-12-10','V. LAKSHMI KALYANI','35,36/PART','SUBRAHAMANYA NAGAR','','','1',0.5,'F','T','13X41775','M','2013-11-01',15,'2013-12-10',0,'2013-11-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (959,'617974273','14','1411','RADHIKA','8500','2013-09-20','M INDUMATHI','PLOT.NO.14/15','N N COLONY SHIVA SAI NAGAR','','','1',0.5,'F','T','13A45420','M','2013-08-01',15,'2013-09-20',0,'2013-08-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (960,'617974293','14','1411','RADHIKA','8500','2013-12-08','A.SITA RAMA RAO','1-1-261/2','SRINIVAS  NAGAR','','','1',0.5,'F','T','13A50530','M','2013-11-01',15,'2013-12-08',0,'2013-11-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (961,'617974396','14','1411','RADHIKA','8500','2013-11-18','K SUBRAMANYAM','PLOT.NO.46','NETAJI NAGAR','','','1',0.5,'F','T','13043873','M','2013-10-01',15,'2013-11-18',0,'2013-10-01',0,-640,0,0,0,0,'F',2,0,0,'2014-02-13',640,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (963,'617974649','10','0244','ALKAPURI','8500','2013-09-10','P..SRINIVASA RAO','PLOT NO.40 SOUTHERN PART','SOWBHAGYAPURAM COLONY,ALKAPURI','','','1',0.5,'F','T','13-B 52612','L','2014-01-01',15,'2013-09-10',0,'2013-08-01',0,3137.5,3137.5,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (966,'617974822','15','0614','MADHAPUR','8500','2013-11-15','S.RAJENDER REDDY','PLOT.NO.24, SY.NO.47,48,4','RAIDURGA SERILINGAMPALLY GHMC','','','1',0.75,'F','T','NX-13-1101','M','2014-01-01',22,'2014-02-19',115000,'2014-01-01',22,14640,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (967,'617974837','15','0614','MADHAPUR','8500','2013-11-16','V SUDHEER REDDY  &  V SAI SWETHAN KUMAR','H.NO:1-53,P.NO.27,SY.NO.4','GUTTALA BEGUMPET','','','2',1,'F','T','NX-13-1155','M','2014-01-01',1,'2014-02-04',6000,'2014-01-01',1,16462.5,0,0,0,0,'F',15,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (969,'617974877','15','0614','MADHAPUR','8500','2013-11-23','MOHD RIYASUDDIN','1-111/1/C/57','KONDAPUR(V)SERILINGAMPALLY GHM','','','1',0.75,'F','T','NX-13-1751','L','2014-01-01',4,'2014-01-25',9000,'2013-12-01',4,1713.7,1712.9,0,0,0,'F',3,0,0,'2014-02-01',3425,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (970,'617974882','15','0614','MADHAPUR','8500','2013-11-23','P.RAJANUKANTH','PLOT NO.96 SY.NO.88/1AND','SUDARSHAN NAGAR','','','1',0.75,'F','T','NX-13-1232','M','2014-01-01',12,'2014-02-18',33000,'2014-01-01',12,3665,0,0,0,0,'F',6,0,0,'2014-02-08',7330,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (972,'617974977','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-11-22','MOHDFAREEDULHAQUE','8-9-40/11','SRIDATTA NAGAR','','','1',0.5,'F','T','018548','M','2013-10-01',15,'2013-11-22',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (973,'617974997','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-12-01','C. RAVI KIRAN SINGH','PLOT NO. 216 & 217','SAHEBNAGAR','','','1',0.5,'F','T','13143402','M','2014-01-01',14,'2014-02-19',25000,'2014-01-01',14,705,0,0,0,0,'F',2,0,0,'2014-02-05',550,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (974,'617975011','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-12-01','G. NAGADAS','PLOT NO. 197','SAHEBNAGAR','','','1',0.5,'F','T','13144653','M','2014-01-01',15,'2014-02-19',30000,'2014-01-01',15,1255,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (975,'617975182','15','0614','MADHAPUR','8500','2013-11-23','M.GANESH YADAV','1-90/B/C/2','MADHAPUR SERLINGAMPALLY.','','','1',0.75,'F','T','13B1773','M','2013-12-01',16,'2014-01-09',33000,'2013-12-01',16,12190,0,0,0,0,'F',10,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (976,'617975205','15','0614','MADHAPUR','8500','2013-11-21','V. DHANA LAKSHMI','1-98/19','MADHAPUR VILLAGE','','','1',0.75,'F','T','NX-13-1560','M','2014-01-01',5,'2014-02-19',66000,'2014-01-01',5,14640,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (977,'617975225','15','0614','MADHAPUR','8500','2013-11-20','K.RAMA DEVI','1-98/6/A/21/A, PLOT NO.21','ARUNODOYA COLONY','','','1',0.75,'F','T','13B1778','M','2014-01-01',18,'2014-02-06',63000,'2014-01-01',18,5138.7,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (980,'617975285','15','0614','MADHAPUR','8500','2013-11-07','SMT.AANUMANDLA VINODHA','HNO 1-98/9/63 SYNO 74&75','JAIHIND ENCLAVE,MADHAPUR,SERIL','','','1',0.75,'F','T','NX-12-1164','M','2014-01-01',30,'2014-02-06',85000,'2014-01-01',30,2.9,0,0,0,0,'F',4,0,0,'2014-02-21',1710,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (981,'617975313','05','0513','BOATS CLUB','8500','2013-12-12','S.SUBRAHMANYA SURESH','6-6-105 TO 106/A','KAVADIGUDA','','500080','1',0.75,'F','T','13-J.3555','M','2013-11-01',50,'2013-12-12',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (982,'617976699','10','0243','AUTONAGAR','8500','2013-09-12','P.JANGA REDDY','PLOT NO.48 W.PART','ARUNODAYA COLONY ROAD.NO.III','','','1',0.5,'F','T','13b32259','M','2014-01-01',10,'2014-02-20',50000,'2014-01-01',10,3137.5,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (983,'617976724','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-12-16','SUBHASH BABU R','1-5-1012/2','BHOPATHI RAO NAGAR','','','1',0.5,'F','T','13J 50706','M','2013-11-01',15,'2013-12-16',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (984,'617976764','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-12-12','KANCHANAPALLY  SHRAVAN KUMAR','1-5-672/3','BHAVANI NAGAR','','','1',0.5,'F','T','B 13090545','M','2013-12-01',19,'2014-01-27',19000,'2013-12-01',19,-80.1,0,0,0,0,'F',4,0,0,'2014-01-29',902,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (985,'617976827','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-12-04','G.MAHENDER REDDY','1-5-1028/146','FATHER BALIAH NAGAR','','','1',0.5,'F','T','13143424','M','2013-11-01',15,'2013-12-04',0,'2013-11-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (986,'617976851','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-11-09','KANUMURU MOHAN KUMAR','17-1-474','KRISHNANAGAR','','','1',0.5,'F','T','13b43614','M','2014-01-01',13,'2014-02-15',28000,'2014-01-01',13,1882.5,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (987,'617976871','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-11-09','Y.RAMAKRISHNA','17-1-392/V/2/26','VAISHALINAGAR','','','1',0.5,'F','T','65432','M','2014-01-01',14,'2014-02-06',115000,'2014-01-01',14,627.5,0,0,0,0,'F',2,0,0,'2014-01-24',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (988,'617977000','01','0121','DHOOD BOWLI','8500','2013-11-10','MUNEERUNNISA BEGUM','20-3-581/5','JALAL KUNCHA, HUSSAINI ALAM','','','1',0.5,'F','T','SLUM','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,627.5,0,0,0,0,'F',1,0,0,'2014-01-20',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (989,'617977015','01','0121','DHOOD BOWLI','8500','2013-11-06','SAJJAN MALLIKARJUN','20-2-668/3/1','KABUTAR KHANA, HUSSINI ALAM','','','1',0.5,'F','T','SLUM','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,1882.5,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (990,'617977589','06','0613','THATTIKHANA','8500','2013-10-27','Y NAGA SATISH AND OTHAR','PLOT NO 68AND69 SURVEY NO','KOSHIK SO BANJARA HILLS RD NO','','','2',1,'F','T','NX.13-1299','M','2014-01-01',1,'2014-02-05',8000,'2014-01-01',1,0,0,0,0,0,'F',5,0,0,'2014-02-20',3685,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (991,'617977925','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-09-11','B.NAGARAJU','PLOT NO 26(NORTHPART)','NEW PADMANAGAR KARMANGHAT SAHE','','','1',0.5,'F','T','13-B 29860','M','2014-01-01',18,'2014-02-24',90000,'2014-01-01',18,3866.5,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (992,'617977990','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-09-11','N.MADHAVI','PLOT NO.31 & 32 PART','APSEB.COLONY,HASTINAPURAM','','','1',0.5,'F','T','13-B-29816','L','2014-01-01',15,'2013-09-11',0,'2013-08-01',0,-2.5,3137.5,0,0,0,'F',4,0,0,'2014-02-26',630,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (993,'617978009','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-09-06','B.VENKAT MANOHAR REDDY','PLOT NO.8,SY.NO.57','SHAKTHI NAGAR COLONY,KARMANGHA','','','1',0.5,'F','T','13-B 29012','M','2013-08-01',15,'2013-09-06',0,'2013-08-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (994,'617978014','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-09-06','N.YADAGIRI REDDY','PLOT NO.76','TEACHERS COLONY,HASTINAPURAM','','','1',0.5,'F','T','13-B 28621','L','2014-01-01',15,'2013-09-06',0,'2013-08-01',0,3137.5,3137.5,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (995,'617978186','06','0622','FATHENAGAR','8500','2013-12-18','G.YADAMMA','7-1-307/44/1/71','B.K.GUDA, S.R.NAGAR,HYDERABAD.','','500038','1',0.5,'F','T','13I44596','M','2014-01-01',6,'2014-02-22',12000,'2014-01-01',6,0,0,0,0,0,'F',3,0,0,'2014-02-26',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (996,'617978338','10','0261','L.B.NAGAR','8500','2013-09-13','M.NARSIMHA REDDY','PLOT NO.33','SRIRAMA HILLS COLONY,MANSOORAB','','','1',0.5,'F','T','13b32237','L','2014-01-01',15,'2013-09-13',0,'2013-08-01',0,3137.5,3137.5,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (997,'617978406','10','0261','L.B.NAGAR','8500','2013-11-26','DR.G.V.SURYANARAYANA MURTHY','PLOT NO.41','SRINIVASA NAGAR COLONY(VISALAN','','','1',0.5,'F','T','2013a2411852','M','2013-10-01',15,'2013-11-26',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (998,'617978411','10','0261','L.B.NAGAR','8500','2013-10-24','SMT GEETHA VANI','PLOT NO.150','MALLIKARJUNA NAGAR,CHINTAL KUN','','','1',0.5,'F','T','13b35144','M','2014-01-01',11,'2014-02-10',45000,'2014-01-01',11,0,0,0,0,0,'F',0,0,0,'2014-02-20',2510,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (999,'617978426','10','0261','L.B.NAGAR','8500','2013-11-08','SRI VEMULA SREEDHAR GOUD','PLOT NO.400,ROAD NO.4','JUDGES COLONY,SAHARA II GATE,M','','','1',0.5,'F','T','13b44755','L','2014-01-01',17,'2013-11-08',0,'2013-10-01',0,719.7,1979.7,0,0,0,'F',0,0,0,'2014-02-05',1260,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1000,'617978703','15','0614','MADHAPUR','8500','2013-10-05','KONADA NARSING RAO','PLOT NO 432A','SRIRAM NAGAR COLONY','','500084','1',0.5,'F','T','13h41660','M','2013-09-01',15,'2013-10-05',0,'2013-09-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1001,'617978718','15','0614','MADHAPUR','8500','2013-10-05','CH NAGESWAR RAO','2-64/123/36','NEW PJR NAGAR,GACHIBOWLI','','','1',0.5,'F','T','13b28794','M','2014-01-01',4,'2014-02-05',16000,'2014-01-01',4,2510,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1002,'617978723','15','0614','MADHAPUR','8500','2013-10-05','AMATHULLAH AMANAZUJAJATH','2-64/123/40','NEW PJR NAGAR,GACHIBOWLI','','','1',0.5,'F','T','13a22269','M','2014-01-01',11,'2014-02-05',45000,'2014-01-01',11,2510,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1003,'617978738','15','0614','MADHAPUR','8500','2013-10-06','M ASHOK','1-26/1/A','NEW PJR NAGAR,GACHIBOWLI','','','1',0.5,'F','T','1723/86107','M','2014-01-01',8,'2014-02-06',30000,'2014-01-01',8,2510,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1004,'617978743','15','0614','MADHAPUR','8500','2013-10-06','PARVEEN FATIMA','1-72/5/2/P/73','NEW PJR NAGAR,GACHIBOWLI','','','1',0.5,'F','T','13438369','M','2013-12-01',5,'2014-01-20',15000,'2013-12-01',5,1882.5,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1005,'617978758','15','0614','MADHAPUR','8500','2013-10-06','SRI.DINESH AGARWAL HUF','1-110/A/65','KONDAPUR','','','1',0.5,'F','T','13a22337','M','2014-01-01',11,'2014-02-19',45000,'2014-01-01',11,0,0,0,0,0,'F',1,0,0,'2014-02-25',2510,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1006,'617978783','15','0614','MADHAPUR','8500','2013-10-10','M YADAIAH','1-26/7/1','NEW PJR NAGAR,GACHIBOWLI','','','1',0.5,'F','T','13h41758','M','2013-09-01',15,'2013-10-10',0,'2013-09-01',0,0,0,0,0,0,'F',7,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1007,'617978798','15','0614','MADHAPUR','8500','2013-12-14','AMEENA BEGUM','1-112/49/A','KONDAPUR','','','1',0.5,'F','T','13A31577','M','2014-01-01',7,'2014-02-14',14000,'2014-01-01',7,1255,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1008,'617978806','15','0614','MADHAPUR','8500','2013-10-10','M SARADA','P.NO.82,SY.NO.136','NEW PJR NAGAR,GACHIBOWLI','','','1',0.5,'F','T','13a22084','M','2014-01-01',8,'2014-02-10',30000,'2014-01-01',8,2510,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1009,'617978831','15','0614','MADHAPUR','8500','2013-10-10','M YADAIAH','SY.NO.136','NEW PJR NAGAR,GACHIBOWLI','','','1',0.5,'F','T','13b29750','M','2014-01-01',8,'2014-02-10',30000,'2014-01-01',8,2510,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1010,'617978866','15','0614','MADHAPUR','8500','2013-11-12','ERRA KUMAR','1-110/A/9/A','GOPALREDDY NAGAR','','','1',0.5,'F','T','13A22336','M','2014-01-01',15,'2014-02-12',45000,'2014-01-01',15,2.5,0,0,0,0,'F',4,0,0,'2014-02-22',1880,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1011,'617978886','15','0614','MADHAPUR','8500','2013-10-12','SYED ATHERPASHA','1-61/2/2','PJR NAGAR','','','1',0.5,'F','T','13b8299','M','2013-09-01',15,'2013-10-12',0,'2013-09-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1012,'617978914','15','0614','MADHAPUR','8500','2013-10-12','NASREEN QURESHI','1-61/2/6','GULSHAN NAGAR, NEW PJR NAGAR','','','1',0.5,'F','T','13438351','M','2013-09-01',15,'2013-10-12',0,'2013-09-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1013,'617978949','15','0614','MADHAPUR','8500','2013-10-12','M RAJARAM','1-3/1/1','MASEED BANDA,KONDAPUR','','','1',0.5,'F','T','12a41867','L','2014-01-01',15,'2013-10-12',0,'2013-09-01',0,2510,2510,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1014,'617978989','15','0614','MADHAPUR','8500','2013-10-15','T HANUMANTHA RAO','1-61/2/6','NEW PJR NAGAR,GACHIBOWLI','','','1',0.5,'F','T','13438138','M','2013-12-01',4,'2014-01-20',13000,'2013-12-01',4,1882.5,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1016,'617979048','16','1621','MAILERDEV PALLY','8500','2013-10-11','M.MANIDEEP REDDY','8-1-207/6/2/A/1','BRUNDAVAN COLONY','','','1',0.5,'F','T','13I42264','M','2013-09-01',15,'2013-10-11',0,'2013-09-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1017,'617979063','15','0614','MADHAPUR','8500','2013-11-10','MASRATH BEGUM','2-64/123','GULSHAN NAGAR,NEW PJR NAGAR,GA','','','1',0.5,'F','T','13j44221','M','2014-01-01',7,'2014-02-20',20000,'2014-01-01',7,627.5,0,0,0,0,'F',3,0,0,'2014-02-14',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1018,'617979425','15','0614','MADHAPUR','8500','2013-11-06','AKOLA JAYAMMA','SY.NO.13 & 14','GACHIBOWLI VILLAGE','','','1',0.5,'F','T','13143479','M','2013-12-01',6,'2014-01-20',13000,'2013-12-01',6,1255,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1019,'617979490','15','0614','MADHAPUR','8500','2013-11-10','D SHILPA','2-62/2/B/21/1/A','ANJAIAH NAGAR,GACHIBOWLI','','','1',0.5,'F','T','13b42242','M','2013-12-01',8,'2014-01-20',15000,'2013-12-01',8,8545,0,0,0,0,'F',7,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1020,'617979508','15','0614','MADHAPUR','8500','2013-11-10','B.SREE DEVI AND  B.ANIL REDDY','1-98/9/3/29/33,P.NO.33','SILICONVALLY,MADHAPUR','','','1',0.5,'F','T','ma132985','M','2014-01-01',11,'2014-02-07',36000,'2014-01-01',11,1882.5,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1021,'617979641','15','0614','MADHAPUR','8500','2013-11-15','J.ARUNA','1-57/10/1','SREERAMNAGAR COLONY NEAR SRI R','','','1',0.5,'F','T','13b8233','M','2014-01-01',5,'2014-02-16',15000,'2014-01-01',5,12817.5,0,0,0,0,'F',7,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1022,'617979887','15','0614','MADHAPUR','8500','2013-12-07','M.SHANKARAMMA','C9-277, P.NO.417','SIDDIQUE NAGAR','','','1',0.5,'F','T','sa134713','M','2013-12-01',13,'2014-01-20',13000,'2013-12-01',13,627.5,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1023,'617979900','15','0614','MADHAPUR','8500','2013-12-12','P.VENKATESHWARLU','1-98/13/2','MADHAPUR','','','1',0.5,'F','T','13b13819','M','2014-01-01',13,'2014-02-08',26000,'2014-01-01',13,1255,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1024,'617979940','15','0614','MADHAPUR','8500','2013-11-07','R PADMAVATHI','P.NO.28,SY.NO.9','NEW PJR NAGAR,GACHIBOWLI','','','1',0.5,'F','T','13a38506','M','2014-01-01',15,'2014-02-07',45000,'2014-01-01',15,1882.5,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1025,'617979980','15','0614','MADHAPUR','8500','2013-11-12','Y.LALITHYA POORNA','1-63/5/8/B/9,PLOT NO.9','KAVURI HILLS,GUTTALABEGUMPET,S','','','1',0.5,'F','T','13j44355','M','2014-01-01',15,'2014-02-15',50000,'2014-01-01',15,627.5,0,0,0,0,'F',1,0,0,'2014-01-25',1498,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1029,'617980078','15','0614','MADHAPUR','8500','2013-12-07','SRI.E.V.RAJA REDDY','1-98/11/2/58(NORTHERSIDE)','ARUNODHAYA SOCIETY MADHAPUR(V)','','','2',1,'F','T','nx131075','M','2014-01-01',9,'2014-02-06',24000,'2014-01-01',9,3685.5,0,0,0,0,'F',8,0,0,'2014-02-04',3685,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1030,'617980098','15','0614','MADHAPUR','8500','2013-12-10','K SREENIVAS','1-89/A/3','KUMMARI BASTI,MADHAPUR VILLAGE','','','1',0.75,'F','T','13j3424','M','2014-01-01',18,'2014-02-18',39000,'2014-01-01',18,3425.8,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1032,'617980160','01','0131','DARUL SHIFA','8500','2013-12-12','MRS.NASREEN SULTANA','22-6-862','IRANI GALLI','','','1',0.5,'F','T','13102272','M','2013-11-01',15,'2013-12-12',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1033,'617980177','01','0122','MISRIGUNJ','8500','2013-11-21','MUZAFFAR UDDIN MUSHARAF','20-7-216/1','QAZIPURA','','','1',0.5,'F','T','13A 36025','M','2014-01-01',15,'2014-02-01',15000,'2014-01-01',15,1882.5,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1034,'617980189','01','0123','PATHERGATTI','8500','2013-11-22','SMT.PUSHPA LATA AGARWAL','21-6-7','GHANSI BAZAR','','','1',0.5,'F','T','13076499','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,1882.5,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1035,'617980207','01','0133','MOGHULPURA','8500','2013-12-10','HAFSA BEGUM','23-6-283','SULTAN SHAHI,NEAR MASQATI DAIR','','','1',0.5,'F','T','B13090565','M','2013-11-01',15,'2013-12-10',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1036,'617980227','01','0133','MOGHULPURA','8500','2013-09-20','HIMAYAT UNNISA BEGUM','23-3-428','MOGHUL PURA','','','1',0.5,'F','T','F123691','M','2013-08-01',15,'2013-09-20',0,'2013-08-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1037,'617980245','01','0122','MISRIGUNJ','8500','2013-12-05','MOHD SHABBIR AHMED','HNO.20-5-524/1','SHAKKARGUNJ,SHALIBANDA','','','1',0.5,'F','T','6178901','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,1255,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1038,'617980257','01','0123','PATHERGATTI','8500','2013-12-05','ARIF ANSARI','21-3-434/A','LAL IMLI LANE,MEHENDI MAHBUB','','','1',0.5,'F','T','D69178901','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,1255,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1039,'617980273','01','0121','DHOOD BOWLI','8500','2013-11-13','SMT ANITA SHARMA','20-2-468/A','OLD KABUTAR KHANA','','','1',0.5,'F','T','1261789','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,1882.5,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1040,'617980282','01','0123','PATHERGATTI','8500','2013-12-05','NARSMIHA','21-2-417/2/1','SHAKAR KOTHA','','','1',0.5,'F','T','B2416488','M','2014-01-01',15,'2014-02-17',30000,'2014-01-01',15,1255,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1041,'617980290','01','0122','MISRIGUNJ','8500','2013-11-05','MOHAMMED ALI','20-4-652/2/B/1','SHAH GUNJ,QUILWATH','','','1',0.5,'F','T','B21185487','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,1882.5,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1042,'617980308','01','0122','MISRIGUNJ','8500','2013-11-20','MD KHAJA','20-6-515 TO 520','SHAH ALI BANDA','','','1',0.5,'F','T','B24162119','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,-2.5,0,0,0,0,'F',1,0,0,'2014-02-25',630,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1043,'617980310','01','0123','PATHERGATTI','8500','2013-11-11','SHRI BRAHMIN SWARNAKAR SABHA','21-3-727/6','KASARATTA,CHELA PURA','','','1',0.5,'F','T','523014/6','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,1882.5,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1044,'617980325','01','0123','PATHERGATTI','8500','2013-11-12','MOHAMMED GHOUSE','21-5-415/18','PETLA BURJ','','','1',0.5,'F','T','SLUM','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,1382.5,0,0,0,0,'F',2,0,0,'2014-02-17',500,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1045,'617980330','01','0123','PATHERGATTI','8500','2013-11-23','GOPAL AGARWAL','21-3-83','CHELA PURA','','','1',0.5,'F','T','13076355','M','2014-01-01',22,'2014-02-17',52000,'2014-01-01',22,2222.7,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1046,'617980345','01','0123','PATHERGATTI','8500','2013-11-25','SRI MOHD HUSSAIN','21-4-111','PETLABURZ','','','1',0.5,'F','T','SLUM','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,1882.5,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1047,'617980350','01','0123','PATHERGATTI','8500','2013-11-25','SAFIA BEGUM','21-5-415/15/B/2','PETLA BURJ,PHOOL BAGH','','','1',0.5,'F','T','SLUM','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,1452.5,0,0,0,0,'F',1,0,0,'2014-02-01',430,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1048,'617980365','01','0123','PATHERGATTI','8500','2013-11-21','M.A.HAMED','21-5-415/16/2','PHOOL BAGH,PETLA BURJ','','','1',0.5,'F','T','SLUM','L','2013-10-01',15,'0001-01-01',0,'0001-01-01',0,-450,0,0,0,0,'F',1,0,0,'2014-02-21',450,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1049,'617980373','01','0122','MISRIGUNJ','8500','2013-10-12','AZGARI BEGUM','20-4-473/1','HIMMATH PURA','','','1',0.5,'F','T','B13091914','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',15,2510,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1050,'617980395','01','0133','MOGHULPURA','8500','2013-12-10','MRS ROJAMMA','23-5-464/2','HOONTOU KA MADAN,LAL DARWAZA','','','1',0.5,'F','T','WRCS','M','2013-11-01',15,'2013-12-10',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1052,'617980970','15','0932','MIYAPUR','8500','2013-12-01','SMT.D.SAROJA AND OTHRS','PLOT NO 13& 14 SY NO 30 T','MIYAPUR ,SERILINGAMPALLY','','','2',0.75,'F','T','13B3309','M','2014-01-01',14,'2014-02-11',27000,'2014-01-01',14,5872,0,0,0,0,'F',12,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1053,'617981009','15','0932','MIYAPUR','8500','2013-11-16','MS.SHUBHAM BUILDERS','PLOT.N0.100 SY.NO.224','MADEENAGUDA MIYAPUR HYD','','','2',0.75,'F','T','13G2730','M','2014-01-01',2,'2014-02-24',6000,'2014-01-01',2,6864,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1054,'617981014','15','0932','MIYAPUR','8500','2013-11-15','K.RAJA SEKHAR','PLOT.NO.205,  SY.NO.20&28','HUDA MAYURI NAGAR MIYAPUR HYD','','','2',0.75,'F','T','NX121817','M','2014-01-01',11,'2014-02-07',16000,'2014-01-01',11,8808,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1055,'617981164','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-08-27','P.GOVARDHAN REDDY','PLOPT NO.200','ABHYUDAYA NAGAR COLONY','','','1',0.75,'F','T','13-B-2401','M','2014-01-01',12,'2014-02-17',125000,'2014-01-01',12,1707.4,0,0,0,0,'F',3,0,0,'2014-01-31',8570,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1056,'617981517','06','0613','THATTIKHANA','8500','2013-12-21','V UMA DEVI AND OTHERS','8-2-269/S/24AND8-2-269/S/','SAGAR SOCIETY BANJARA HILLS HY','','','2',0.75,'F','T','NX131512','M','2014-01-01',15,'2014-02-20',50000,'2014-01-01',15,5872,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1057,'617981557','06','0613','THATTIKHANA','8500','2013-12-14','S.MADHAVI REDDY','HNO.8-2-293/82/L/225/A','M L A COLONY,ROAD NO.12 BANJAR','','','1',0.5,'F','T','13143542','M','2014-01-01',40,'2014-02-08',80000,'2014-01-01',40,4495,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1058,'617981588','06','0631','YELLAREDDYGUDA','8500','2013-10-28','U LAKSHMI BAI','8-3-903/F/1','NAGARJUNA NAGAR','','','1',0.75,'F','T','NXS3308','M','2014-01-01',19,'2014-02-19',76000,'2014-01-01',19,12230,0,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1059,'617981705','15','0614','MADHAPUR','8500','2013-12-21','SRI.M.YELLASWAMY','H.NO.1-65/43/N/128, PLOT','GUTTALABEGUMPET VILLAGE','','','1',0.5,'F','T','13J50949','M','2013-11-01',15,'2013-12-21',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1060,'617981921','09','0917','BHAGYANAGAR','8500','2013-09-10','G.N.RAMANUJA RAO','PLOT NO.3/2 & 3/3,','TULASI NAGAR,KUKATPALLY','','','1',0.75,'F','T','66','M','2013-12-01',26,'2014-01-09',106000,'2013-12-01',26,-0.4,0,0,0,0,'F',7,0,0,'2014-01-20',6852,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1061,'617982327','07','0714','SRINIVAS NAGAR','8500','2013-12-09','SRI.J.VARADA RAJAN AND OTHERS','HNO.11-3-392/2/14/1','SRINIVAS NAGAR,SECUNDERABAD','','','1',0.75,'F','T','13J3627','M','2013-11-01',50,'2013-12-09',0,'2013-11-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1062,'617982433','07','0723','METTUGUDA','8500','2013-12-07','RANI BAI','17-108','TUKARAM GATE','','','1',0.5,'F','T','13A33729','M','2013-12-01',15,'2014-01-14',15000,'2013-12-01',15,-2.5,0,0,0,0,'F',0,0,0,'2014-01-22',630,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1064,'617982632','07','0722','MARREDPALLY','8500','2013-12-13','SRI.P.DINESH KUMAR AND SMT.P.KIRAN','H.NO 10-4-1 & 1/A','ADDAGUTTA,MARREDPALLY','','','1',0.75,'F','T','13K3836','M','2013-11-01',50,'2013-12-13',0,'2013-11-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1065,'617982936','02','0222','ASMANGARH','8500','2013-12-11','DR.R.PANDU NAIK','16-2-738/F/5','ASMANGADH,MALAKPET,HYDERABAD','','','2',0.75,'F','T','95775','M','2014-01-01',44,'2014-02-17',54000,'2014-01-01',44,0,0,0,0,0,'F',5,0,0,'2014-02-21',1843,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1066,'617982958','02','0213','MOOSARAMBAGH','8500','2013-11-26','A.SURESH KUMAR','16-11-511/D/218','SHALIVAHANA NAGAR MOOSARAM BAG','','','1',0.5,'F','T','13A42201','L','2014-01-01',8,'2014-01-15',15000,'2013-12-01',8,9172.5,3057.5,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1067,'617982989','02','0231','SANTOSHNAGAR','8500','2013-12-11','MRS.NOORJAHAN BEGUM','17-1-196/18/2','NEHRU NAGAR COLONY,RAI BAZAR','','','1',0.5,'F','T','13A38907','M','2013-11-01',15,'2013-12-11',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1072,'617983038','02','0231','SANTOSHNAGAR','8500','2013-12-07','MOHD  NOMAN','17-1-391/M/140/10','KHAJA BAGH','','','1',0.5,'F','T','13A45367','M','2014-01-01',10,'2014-02-17',18000,'2014-01-01',10,625,0,0,0,0,'F',2,0,0,'2014-01-24',630,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1073,'617983043','02','0231','SANTOSHNAGAR','8500','2013-11-24','SARDAR SIKANDAR ALI KHAN','17-1-182/D/69','MUMTAZ COLONY','','','1',0.5,'F','T','13813371','M','2013-10-01',15,'2013-11-24',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1074,'617983072','02','0233','YAKATPURA','8500','2013-11-15','AHMED ALI','17-3B-163 (PORTION)','CHUNNE KI BHATTI','','','1',0.5,'F','T','113670','M','2013-10-01',15,'2013-11-15',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1075,'617983087','02','0213','MOOSARAMBAGH','8500','2013-12-19','SYED ABDUL RAHMAN WASEEM','16-11-16/K/29','TEEGAL GUDA AFZAL NAGAR COLONY','','','1',0.75,'F','T','NX-13-1248','M','2013-11-01',50,'2013-12-19',0,'2013-11-01',0,0,0,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1076,'617983194','13','1303','YAPRAL (Div13)','8500','2013-12-14','HARSH SAXENA . BRIG.RAVI PRAKESH SAXENA','5-8-30/122/A','GOVARDHAN PURI GARDEN','','','1',0.5,'F','T','13072802','M','2013-12-01',10,'2014-01-10',10000,'2013-12-01',10,-0.5,0,0,0,0,'F',1,0,0,'2014-01-28',628,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1077,'617983290','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-12-19','N.KRUSHNA RAO','1-5-1006/1/B , PLOT NO-40','BHOOPARHIRAO NAGAR','','','1',0.5,'F','T','13090597','M','2013-11-01',15,'2013-12-19',0,'2013-11-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1078,'617983330','12','0922','CHINTAL','8500','2013-12-15','HINDUMAL JAIN  AND OTHERS','P.NO.43,44,&45','RAGHAVENDRA COLONY','','','2',1,'F','T','NX-13-1209','M','2014-01-01',180,'2014-02-03',380000,'2014-01-01',180,-0.01,0,0,0,0,'F',20,0,0,'2014-02-17',7310.01,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1079,'617983342','12','0923','ADARSHNAGAR','8500','2013-12-16','P.RRBHAKAR  AND  OTHERS','P.NO.106& 107 (NEW 46-47)','APHB MIGH II, IDPL CHINTAL','','','2',0.75,'F','T','NX 13 1706','M','2014-01-01',80,'2014-02-04',200000,'2014-01-01',80,0,0,0,0,0,'F',12,0,0,'2014-02-18',1478,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1080,'617983350','12','0922','CHINTAL','8500','2013-12-16','B.S.SRINIVASA RAO','PLOT NO.73/B/PART(S.S.P.)','PLOT NO.74/A,PRASOONA NAGAR,CH','','','2',0.75,'F','T','13B 1144','M','2014-01-01',27,'2014-02-04',48000,'2014-01-01',27,10246,0,0,0,0,'F',14,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1081,'617983365','12','0922','CHINTAL','8500','2013-12-17','SHREE MARUTHI CONSTRUCTIONS REP BY SRI K.CHAN','PLOT.NO.607/PART(W.S.PART','109,B.NO.49,PADMANAGAR COLONY-','','','2',0.75,'F','T','12B 3537','M','2014-01-01',100,'2014-02-04',600000,'2014-01-01',100,20926,0,0,0,0,'F',12,0,0,'2014-02-24',12000,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1082,'617983370','12','0922','CHINTAL','8500','2013-12-03','KOTA VIJAYA MOHAN AND OTHERS DA CUM GPA HOLDE','PLOT NO.463&464,SYNO.94 B','PADMA NAGAR COLONY,PHASE-II,QU','','','2',1,'F','T','13J 4635','M','2014-01-01',17,'2014-02-04',38000,'2014-01-01',17,0,0,0,0,0,'F',20,0,0,'2014-02-25',7310,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1083,'617983380','15','0932','MIYAPUR','8500','2013-12-12','M.KRISHNAM RAJU','M.KRISHNAM RAJU','HUDA MAYUR NAGAR','','','1',0.75,'F','T','13J 3388','M','2014-01-01',8,'2014-02-12',39000,'2014-01-01',8,1712.9,0,0,0,0,'F',4,0,0,'2014-01-21',1712.9,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1084,'617983423','15','0932','MIYAPUR','8500','2013-12-21','M.JAGATHPAL REDDY','PLOT NO.331','HUDA MAYURI NAGR','','','1',0.75,'F','T','197','M','2014-01-01',27,'2014-02-17',43000,'2014-01-01',27,-0.2,0,0,0,0,'F',2,0,0,'2014-02-25',1713,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1085,'617983731','02','0222','ASMANGARH','8500','2013-12-22','MRS.ZAHIDA BANU','HNO.16-2-866/1/A','JEEVAN YAAR COLONY SAIDABAD','','','1',0.5,'F','T','13-G-34849','L','2014-01-01',15,'2013-12-22',0,'2013-11-01',0,628,1255,0,0,0,'F',2,0,0,'2014-02-08',627,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1086,'617983929','14','1422','UPPAL','8500','2013-11-22','P.BANGARAMMA','PLOT NO 45','SEVEN HILLS COLONY','','','2',1,'F','T','13J 4617','M','2013-10-01',75,'2013-11-22',0,'2013-10-01',0,0,0,0,0,0,'F',30,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1087,'617983934','14','1422','UPPAL','8500','2013-10-01','SRI CH.SRINADH YADAV','PLOT NO.40 PART,SY.NO.60/','UPPAL','','','2',1,'F','T','13B 2788','M','2014-01-01',69,'2014-02-20',170000,'2014-01-01',69,29240,0,0,0,0,'F',20,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1088,'617983969','14','1422','UPPAL','8500','2013-11-22','G.CHENNA REDDY','2-19-81 (PNO 204)','KALYANPURI','','','2',0.75,'F','T','12B 1010','M','2013-12-01',91,'2014-01-30',182000,'2013-12-01',91,5411,0,0,0,0,'F',7,0,0,'2014-02-05',2000,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1089,'617984149','14','1421','HUBSIGUDA','8500','2013-10-17','K.RAGHUVEER REDDY','PLOT NO.85','RAVINDRANAGAR COLONY,HUBSIGUDA','','','1',0.5,'F','T','13G 34903','M','2014-01-01',41,'2014-02-13',107000,'2014-01-01',41,5239.7,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1090,'617984183','14','1423','RAMANTHAPUR(DIV 14)','8500','2013-12-01','K.R.SRIKANTH','3-7-112/1/B','INDIRA NAGAR','','','1',0.5,'F','T','13I 44610','M','2013-11-01',15,'2013-12-01',0,'2013-11-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1091,'617984529','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-11-09','S V V S MURTHY','HIG-67','CBI COLONY, PHASE-IV','','','1',0.75,'F','T','nx133016','M','2014-01-01',18,'2014-02-16',88000,'2014-01-01',18,0.9,0,0,0,0,'F',4,0,0,'2014-02-21',1712,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1092,'617984599','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-12-14','BALAGAVENKATARAO','PLOT NO 20','DHATUNAGAR','','','1',0.5,'F','T','13i44774','M','2013-11-01',15,'2013-12-14',0,'2013-11-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1093,'617984955','13','1301','ALWAL (Div13)','8500','2013-11-15','B.BALASWAMY REDDY','1-25-143/5/2/1','GOLLAGUDA   OLD ALWAL','','','1',0.5,'F','T','13081948','M','2014-01-01',8,'2014-02-10',24000,'2014-01-01',8,1882.5,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1094,'617984967','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-11-15','KUMARI  J MADHAVI','1-5-941/5','BHPATHI RAO NAGAR','','','1',0.5,'F','T','B-13072967','M','2013-10-01',15,'2013-11-15',0,'2013-10-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1095,'617985016','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-11-03','P.PRASHANTH KUMAR','1-5-1009/10','BHUPATHI RAO NAGAR, FATHER BAL','','','1',0.5,'F','T','B-13057613','M','2013-10-01',15,'2013-11-03',0,'2013-10-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1096,'617985107','13','1301','ALWAL (Div13)','8500','2013-11-01','NALIMELA  JEEVAN  KUMAR','1-7-100/155','REDDY ENCLAVE','','','1',0.5,'F','T','13072887','M','2014-01-01',15,'2014-02-10',35000,'2014-01-01',15,627.5,0,0,0,0,'F',4,0,0,'2014-02-21',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1097,'617985325','01','0113','M.R.G.FILTERS','8500','2013-11-26','MIRZA ASIF ALI BAIG','19-3-602/1/B GAZI BANDA H','GAZI BANDA HYD','','','1',0.5,'F','T','WRCS','M','2013-10-01',15,'2013-11-26',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1098,'617985330','01','0113','M.R.G.FILTERS','8500','2013-11-27','SYED AFZAL UDDIN','19-3-79/A/2','JAHUNUMA,LANCER','','','1',0.5,'F','T','WRCS','M','2013-10-01',15,'2013-11-27',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1099,'617985350','01','0113','M.R.G.FILTERS','8500','2013-11-24','RAZIA BEGUM','19-3-117/4/D','JAHUNUMA','','','1',0.5,'F','T','WRCS','M','2013-10-01',15,'2013-11-24',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1100,'617985455','09','0917','BHAGYANAGAR','8500','2013-12-16','C.VENKATESHWARA RAO','4-42-1068/2','PAPARAYUDU NAGAR COLONY','','','1',0.5,'F','T','13A45080','M','2014-01-01',10,'2014-02-18',24000,'2014-01-01',10,8545,0,0,0,0,'F',7,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1101,'617985516','01','0113','M.R.G.FILTERS','8500','2013-12-22','R PRAKASH','19-3-945/A','SHAMSHEER GUNJ','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-22',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1102,'617985536','01','0113','M.R.G.FILTERS','8500','2013-12-24','MRS TAJ UNISSA','19-3-201/9/B/3/F/4/A','MADAN KHAN COLONY,JAHUNUMA','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-24',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1106,'617985651','09','0917','BHAGYANAGAR','8500','2013-12-12','B.RAMA CHANDRA REDDY','PLOT NO-65/V3','BHAGYANAGAR CO-OP SOCIETY, PHA','','','2',0.75,'F','T','13 B 1263','M','2014-01-01',51,'2014-02-11',83000,'2014-01-01',51,0,0,0,0,0,'F',10,0,0,'2014-02-24',3665,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1108,'617986308','09','0917','BHAGYANAGAR','8500','2013-12-05','KAAVYASRI.P','22-120/4A PLOT NO. 30 SY.','KUKATPALLY','','','1',0.75,'F','T','2011-6158291','M','2014-01-01',5,'2014-02-17',15000,'2014-01-01',5,3425.8,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1109,'617986393','09','0917','BHAGYANAGAR','8500','2013-12-06','KAKARLA  PRASHANTHI','2-22-87/B, PLOT NO.55','VIJAYA NAGAR COLONY, KUKATPALL','','','1',0.75,'F','T','2011-6157981','M','2014-01-01',55,'2014-02-10',163000,'2014-01-01',55,13425.3,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1111,'617986483','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-12-08','G.RAJA LAKSHMI','PLOT NO.14','SRI SAINAGAR COLONY,TIRUMALA N','','','1',0.5,'F','T','5','M','2014-01-01',22,'2014-02-16',45000,'2014-01-01',22,1984,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1112,'617986591','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-12-10','A.SUNITHA','PLOT NO.C-209','GREEN PARK COLONY','','','1',0.5,'F','T','06051296','M','2014-01-01',14,'2014-02-15',44000,'2014-01-01',14,626,0,0,0,0,'F',3,0,0,'2014-02-10',1358,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1113,'617986624','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-12-14','VIJAYA LAXMI','12-59/11 PLOT.NO-22(PHASE','JAYA BHARATH NAGAR,JILLEL GUDA','','','1',0.5,'F','T','13.B.31082','M','2013-11-01',15,'2013-12-14',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1114,'617986639','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-12-08','V.SASIKALA','8-9-24/38/39','SRI SAI NAGAR,JILLELAGUDA','','','1',0.5,'F','T','13.H.41632','M','2013-11-01',15,'2013-12-08',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1116,'617986860','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-10-11','PINAPPU SAI REDDY','PLOT NO. 26','SHENAMAINAGAR','','','1',0.5,'F','T','13B32168','M','2014-01-01',14,'2014-02-19',84000,'2014-01-01',14,3725,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1117,'617986914','05','0532','SHIVAM','8500','2013-10-22','THOKALA ANJAIAH','2-3-64/1/21','JAISWAL GARDEN','','','1',0.5,'F','T','13B28691','M','2013-09-01',15,'2013-10-22',0,'2013-09-01',0,0,0,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1118,'617986928','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-11-01','SRI DR. V.S.V.N.V. PANCHAMUKHESWARA RAO','17-1-391/S/305, SINGARENI','SAIDABAD, HYDERABAD','','','1',0.75,'F','T','13B1718','M','2014-01-01',25,'2014-02-16',59000,'2014-01-01',25,1712.7,0,0,0,0,'F',4,0,0,'2014-01-27',3426,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1120,'617986969','05','0532','SHIVAM','8500','2013-11-02','P.SHANKAR','2-2-1107/98','TILAK NAGAR,HYDERABAD','','','1',0.5,'F','T','SLUM','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,1882.5,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1121,'617986974','05','0532','SHIVAM','8500','2013-11-02','G.SATHISH KUMAR','HNO.2-2-1165/3/B','TILAK NAGAR NEW NALLAKUNTA','','','1',0.5,'F','T','13B29896','L','2014-01-01',17,'2013-11-02',0,'2013-10-01',0,724.7,1979.7,0,0,0,'F',3,0,0,'2014-02-15',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1122,'617987003','05','0532','SHIVAM','8500','2013-11-15','K E SHARON','2-3-762/A/1','GOLNAKA','','','1',0.5,'F','T','13B28691','M','2013-10-01',15,'2013-11-15',0,'2013-10-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1124,'617987023','05','0532','SHIVAM','8500','2013-11-15','YASMEEEN FATIMA','2-3-43/5/C/A','QUADRIBAGH','','','1',0.5,'F','T','13B31690','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,1882.5,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1125,'617987077','10','0261','L.B.NAGAR','8500','2013-11-19','B. SHIVA SHANKER GOUD','PLOT NO.171','VENKATARAMANA COLONY,ROAD NO.1','','','1',0.5,'F','T','13H29869','M','2013-10-01',15,'2013-11-19',0,'2013-10-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1126,'617987370','10','0243','AUTONAGAR','8500','2013-11-17','T.BHOOLAXMI','PLOT NO.92','SATHYANAGAR COLONY NEAR MOTHER','','','1',0.5,'F','T','06052273','M','2013-10-01',15,'2013-11-17',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1127,'617987413','10','0243','AUTONAGAR','8500','2013-10-26','MANDULA.MALLESH','PLOT NO.31','ANDRA BANK COLONY','','','1',0.5,'F','T','13G-34922','M','2013-09-01',15,'2013-10-26',0,'2013-09-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1128,'617987428','10','0243','AUTONAGAR','8500','2013-10-26','B . SWAMY','PLOT NO. 2','VINAYAKANAGAR COLONY','','','1',0.5,'F','T','13B32456','M','2014-01-01',14,'2014-02-16',58000,'2014-01-01',14,628,0,0,0,0,'F',0,0,0,'2014-02-14',1882,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1129,'617987582','02','0231','SANTOSHNAGAR','8500','2013-12-07','MOHD.OMER ZIA','17-1-178/A/35/1','SRI NAGAR','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1135,'617987788','02','0231','SANTOSHNAGAR','8500','2013-12-07','AHMED ABDUL RAB RABBANI','17-1-178/99','DARABJUNG COLONY','','','1',0.5,'F','T','B-33988','M','2013-11-01',15,'2013-12-07',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1136,'617987841','02','0231','SANTOSHNAGAR','8500','2013-11-07','P.ANURADHA','17-1-391/60/NSW/86','NEW SUBRAMANYA NAGAR','','','1',0.5,'F','T','','L','2014-01-01',18,'0001-01-01',0,'0001-01-01',0,2028.3,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1137,'617987876','02','0231','SANTOSHNAGAR','8500','2013-11-06','HYDER HASSAN','17-1-182/103/11/A','BANU NAGAR','','','1',0.5,'F','T','','L','2013-10-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1141,'617988073','02','0231','SANTOSHNAGAR','8500','2013-11-07','SHAHEDA BEGUM','17-1-181/A/89','CHANDRAIAHATS','','','1',0.5,'F','T','SLUM','M','2013-10-01',15,'2013-11-07',0,'2013-10-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1142,'617988306','14','1422','UPPAL','8500','2013-09-13','M.ASHOK','2-4-125/26','MALLIKA','','500039','1',0.5,'F','T','01648476','M','2013-08-01',15,'2013-09-13',0,'2013-08-01',0,0,0,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1143,'617988328','01','0113','M.R.G.FILTERS','8500','2013-11-23','MOHD HYDER BAIG','19-3-300/21/C/1','BIBI  KA CHASMA,VATTEPALLY.','','','1',0.5,'F','T','WRCS','M','2013-10-01',15,'2013-11-23',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1145,'617988393','01','0113','M.R.G.FILTERS','8500','2013-11-25','NASEEM BEGUM','19-3-300/7/1/B/2','BIBI KA CHASMA','','','1',0.5,'F','T','WRCS','M','2013-10-01',15,'2013-11-25',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1146,'617988401','01','0113','M.R.G.FILTERS','8500','2013-11-23','MOHAMMED ALI','19-3-301/F','BIBI KA CHASMA','','','1',0.5,'F','T','WRCS','M','2013-10-01',15,'2013-11-23',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1147,'617988412','01','0111','BAHADURPURA','8500','2013-11-23','MEHRAJ BEGUM','19-3-201/7/7','JAHUNUMA,VATTEPALLY','','','1',0.5,'F','T','WRCS','M','2013-10-01',15,'2013-11-23',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1148,'617988421','01','0113','M.R.G.FILTERS','8500','2013-11-23','FAZAL KHAN','19-3-22/A','LANCER,JAHUNUMA','','','1',0.5,'F','T','WRCS','M','2013-10-01',15,'2013-11-23',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1149,'617988441','01','0113','M.R.G.FILTERS','8500','2013-11-26','RIZWANA BEGUM','19-3-1089/C/39  BIBI KA C','BIBI KA CHASAMA HYD','','','1',0.5,'F','T','SLUM','L','2014-01-01',15,'2013-11-26',0,'2013-10-01',0,1882.5,1882.5,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1150,'617988452','01','0111','BAHADURPURA','8500','2013-11-26','SHAIK ALI','19-3-300/18/2','VATTEPALLY,BIBI KA CHASMA','','','1',0.5,'F','T','WRCS','M','2013-10-01',15,'2013-11-26',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1151,'617988461','01','0113','M.R.G.FILTERS','8500','2013-11-24','MOHD IBRAHIM','19-3-300/8/1','VATTEPALLY,JAHUNUMA','','','1',0.5,'F','T','WRCS','M','2013-10-01',15,'2013-11-24',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1152,'617988476','01','0113','M.R.G.FILTERS','8500','2013-11-24','MOHD ABDUL FATHE','19-3-189/A','JAHANUMA','','','1',0.5,'F','T','WRCS','M','2013-10-01',15,'2013-11-24',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1153,'617988519','01','0113','M.R.G.FILTERS','8500','2013-12-20','ALIYA','19-3-265/22/B  VATTAPALLY','VATTAPALLY HYD','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-20',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1154,'617988539','01','0113','M.R.G.FILTERS','8500','2013-12-22','QADEER UNNISA BEGUM','19-3-549/B/10/4','ALINAGAR','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-22',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1155,'617988544','01','0113','M.R.G.FILTERS','8500','2013-12-19','ABDUL  LATEEF','19-3-543/42/A/2  ALI NAGE','ALI NAGER JHANUMMA HYD','','','1',0.5,'F','T','SLUM','L','2014-01-01',15,'2013-12-19',0,'2013-11-01',0,1255,1255,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1156,'617988559','01','0113','M.R.G.FILTERS','8500','2013-11-23','MOHAMMED LATEEF','19-3-301/32/A','BIBI KA CHASMA','','','1',0.5,'F','T','WRCS','M','2013-10-01',15,'2013-11-23',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1157,'617988564','01','0113','M.R.G.FILTERS','8500','2013-12-18','JEELANI BEGUM','19-3-263/D/12/3','ACHIREDDY NAGAR,JAHANUMA','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1158,'617988579','01','0113','M.R.G.FILTERS','8500','2013-12-21','GHOUSIA BEGUM','19-3-1090/A/1','MADINA COLONY','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1160,'617988762','03','0311','TOLI CHOWK','8500','2013-12-05','FAMEENA BEGUM','8-1-423/A/50','DIAMOND HILLS','','','1',0.5,'F','T','13B2977','M','2013-11-01',15,'2013-12-05',0,'2013-11-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1161,'617988850','03','0311','TOLI CHOWK','8500','2013-12-09','ABDUL SADAT','8-1-297/2/E/16','FALCON VALLEY,SHAIKPET','','','1',0.5,'F','T','06052192','M','2014-01-01',26,'2014-02-18',60000,'2014-01-01',26,8545,0,0,0,0,'F',7,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1162,'617988865','03','0311','TOLI CHOWK','8500','2013-12-09','AFAQ TANVEER','8-1-297/2/E/3(PART OF PLO','FALCON VALLEY','','','1',0.5,'F','T','13A3509','M','2014-01-01',8,'2014-02-21',10000,'2014-01-01',8,1255,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1163,'617988870','03','0311','TOLI CHOWK','8500','2013-12-10','FATIMA MAHMOOD','8-1-297/2/E/16','FALCON VALLEY','','','1',0.5,'F','T','06052198','U','2014-01-01',24,'2013-12-10',0,'2013-11-01',0,9760,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1164,'617988885','03','0311','TOLI CHOWK','8500','2013-12-10','HUSNA ANJUM','8-1-297/2/E/3','FALCON VALLEY','','','1',0.5,'F','T','13A3502','M','2014-01-01',6,'2014-02-25',9000,'2014-01-01',6,1255,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1165,'617988890','03','0311','TOLI CHOWK','8500','2013-12-11','MOHAMMED IRFAN UDDIN','8-1-297/2/E/17','FALCON VALLEY,SHAIKPET','','','1',0.5,'F','T','06053153','M','2014-01-01',9,'2014-02-18',12000,'2014-01-01',9,6115,0,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1166,'617988908','03','0311','TOLI CHOWK','8500','2013-12-11','MOHD NOOR UL HAQ','8-1-297/2/E/9(PLOT NO 34)','FALCON VALLEY','','','1',0.5,'F','T','06053168','M','2014-01-01',3,'2014-02-25',13000,'2014-01-01',3,9760,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1167,'617988913','03','0311','TOLI CHOWK','8500','2013-12-11','MOHD RAFEEQ UR RAHMAN','8-1-297/2/E/6','FALCON VALLEY','','','1',0.5,'F','T','06052199','M','2014-01-01',24,'2014-02-18',60000,'2014-01-01',24,2956,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1168,'617988928','03','0311','TOLI CHOWK','8500','2013-12-12','MRS.ABIDA FASEE','8-1-297/2/E/15','FALCON VALLEY,SHAIKPET','','','1',0.5,'F','T','06052200','M','2014-01-01',26,'2014-02-26',60000,'2014-01-01',26,7330,0,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1169,'617988933','03','0311','TOLI CHOWK','8500','2013-12-12','NIKHAT SULTANA','8-1-299/10(PART)','AL-HAMRA COLONY','','','1',0.5,'F','T','13J44029','M','2014-01-01',14,'2014-02-24',27000,'2014-01-01',14,8545,0,0,0,0,'F',7,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1170,'617988953','03','0311','TOLI CHOWK','8500','2013-12-13','RUMMA HASAN AND OTHERS','8-1-346/3','SABZA COLONY','','','1',0.5,'F','T','13B8216','L','2013-12-01',15,'2013-12-13',0,'2013-11-01',0,-0.5,627.5,0,0,0,'F',1,0,0,'2014-02-22',628,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1171,'617989002','03','0311','TOLI CHOWK','8500','2013-12-14','MOHAMMED RAFEEQ UDDIN','8-1-423/A/310','DIAMAND HILLS','','','1',0.5,'F','T','13J50606','M','2014-01-01',5,'2014-02-20',43000,'2014-01-01',5,2696.8,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1172,'617989097','03','0311','TOLI CHOWK','8500','2013-12-07','MOHAMMED YOUNUS AHMED','8-1-398/PM/8/1','PARAMOUNT COLONY TOLICHOWKI','','','1',0.5,'F','T','13A38502','M','2013-11-01',15,'2013-12-07',0,'2013-11-01',0,0,0,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1173,'617989187','03','0342','KARWAN','8500','2013-12-01','BOGA RAJU','13-6-251/5/104','TELECOM COLONY,JAFFERGUDA,GUDD','','','1',0.5,'F','T','13B32650','M','2013-12-01',14,'2014-01-20',14000,'2013-12-01',14,627.5,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1174,'617989435','07','0733','LALAPET','8500','2013-11-14','RAMKUMARI DEVI','PLOT NO.25','LALAPET','','','1',0.5,'F','T','13A9215','M','2014-01-01',20,'2014-02-20',60000,'2014-01-01',20,2611.5,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1175,'617989737','07','0732','TARNAKA','8500','2013-12-21','K.NARSING RAO AND OTHERS','12-13-829/7/A','TARNAKA','','','1',0.5,'F','T','13A40015','M','2014-01-01',18,'2014-02-10',22000,'2014-01-01',18,1400.8,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1176,'617989890','07','0732','TARNAKA','8500','2013-12-21','PADMA REDDYD','12-13-677/116','LANE#2,STREET#1','','500017','1',0.75,'F','T','13K3840','M','2014-01-01',37,'2014-02-06',61000,'2014-01-01',37,1693.1,0,0,0,0,'F',0,0,0,'2014-02-12',2000,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1178,'617990189','01','0111','BAHADURPURA','8500','2013-12-24','SYED MAQBOOL','4-15-142','HASSAN NAGAR','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1180,'617990202','01','0111','BAHADURPURA','8500','2013-12-24','B.RAJENDER KUMAR','19-5-82/1/20/1','NANDIMUSLAIGUDA','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1181,'617990217','01','0111','BAHADURPURA','8500','2013-12-09','RAZIYA BEGUM','19-5-31/A/35/A','MAHMOOD NAGAR,N M GUDA,KISHANB','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1182,'617990222','01','0111','BAHADURPURA','8500','2013-12-06','MOHAMMED SHAIK','19-5-32/5/12/A/1','NANDIMUSLAI GUDA','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1183,'617990237','01','0111','BAHADURPURA','8500','2013-12-07','MOHAMMED MOINUDDIN','19-5-31/56/1/M','MAHMOOD NAGAR,KISHAN BAGH','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1184,'617990242','01','0111','BAHADURPURA','8500','2013-12-06','MIRZA MUJIB UR RAHMAN BAIG','19-4-274/1/C','MIR ALAM TTANK,HYDERABA','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1186,'617990262','01','0111','BAHADURPURA','8500','2013-12-04','GULAM AHMED KIRMANI','19-5-28/36/E/1','NANDI MUSLAIGUDA','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1187,'617990277','01','0111','BAHADURPURA','8500','2013-12-06','MOHAMMED YOUSUF','19-5-32/5/12/A','NANDIMUSLAI GUDA','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1188,'617990282','01','0111','BAHADURPURA','8500','2013-12-04','ASIA TABASSUM','19-5-32/A/44/1','NANDI MUSLAI GUDA KISHAN BAGH','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1189,'617990297','01','0111','BAHADURPURA','8500','2013-12-04','WAHEEDA RAHMAN','19-4-279/A/97','NAWA SAHAB KUNTA','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1190,'617990305','01','0111','BAHADURPURA','8500','2013-12-04','SYED ILYAS MOHIUDDIN','19-5-32/35/C','MAHMOOD NAGAR,KISHAN BAGH','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1191,'617990310','01','0111','BAHADURPURA','8500','2013-12-04','SHAHEEN BEGUM','19-4-278/A/1/A','MRG, FILTERS','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1192,'617990325','01','0111','BAHADURPURA','8500','2013-12-04','SYED ABDUL WAHEED','19-5-28/44/E/1','MAHMOOD NAGAR,KISHAN BAGH','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1193,'617990330','01','0111','BAHADURPURA','8500','2013-12-04','MRS PARVEEN BEGUM','19-5-31/A/29/B/P','NANDI MUSLAIGUDA','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1194,'617990345','01','0111','BAHADURPURA','8500','2013-12-04','MOHAMMED HABEEB UDDIN','19-5-28/9/E','MAHMOOD NAGAR .KISHAN BAGH.','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1195,'617990350','01','0111','BAHADURPURA','8500','2013-12-04','SARDAR DARSHAN SINGH','19-4-340/9/11','KISHAN BAGH','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,-215,0,0,0,0,'F',0,0,0,'2014-02-07',215,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1197,'617990370','01','0111','BAHADURPURA','8500','2013-12-03','SHENAZ MOHD ALI','19-5-29/78/1/H','MAHMOOD NAGAR,KISHAN BAGH','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1198,'617990453','01','0111','BAHADURPURA','8500','2013-12-25','N.PRAVEEN KUMAR','19-5-479/C/28','NANDIMUSLAIGUDA ,KISHAN BAGH','','','1',0.5,'F','T','','L','2013-11-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1200,'617991122','10','0243','AUTONAGAR','8500','2013-09-08','PAMARTHI NANCHARAIAH','PLOT NO. 74','PADMAVATHI COLONY','','','1',0.5,'F','T','13B1340','L','2014-01-01',15,'2013-09-08',0,'2013-08-01',0,3137.5,3137.5,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1201,'617991177','13','1301','ALWAL (Div13)','8500','2013-12-29','S SRINIVAS REDDY','1-30-318','KHANAJIGUDA','','','1',0.5,'F','T','SA132972','M','2014-01-01',6,'2014-02-10',11000,'2014-01-01',6,1255,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1202,'617991194','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-12-20','K.RAJ KUMAR','1-5-1092/74P,PLOT NO.74PA','MANGAPURAM COLONY,FATHER BALAI','','','1',0.5,'F','T','13J44062','M','2013-11-01',15,'2013-12-20',0,'2013-11-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1203,'617991277','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-12-25','K. LALITHA','PLOT NO 41','MADHURA ENCLAVE','','','1',0.5,'F','T','13073474','M','2013-11-01',15,'2013-12-25',0,'2013-11-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1204,'617991365','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-12-27','K. SWARNALATHA. K. SUNITHA','1-5-172/1','SURYANAGAR','','','1',0.5,'F','T','13091886','M','2013-11-01',15,'2013-12-27',0,'2013-11-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1205,'617991584','09','0915','KPHB','8500','2013-10-25','BODDU RADHIKA & YALAVARTHI MADHAVI','PLOT NO 42','NRSA COLONY HYDERNAGAR KUKATPA','','','1',0.5,'F','T','7B1551','M','2014-01-01',25,'2014-02-21',100000,'2014-01-01',25,4454,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1206,'617991757','07','0724','SEETHAPALMANDI','8500','2014-01-02','S.VENKATESH','HNO.11-4-453/1','BJP GALLI CHILKALGUDA SITHAPHA','','','1',0.5,'F','T','9B21388','M','2014-01-01',15,'2014-02-17',15000,'2014-01-01',15,627.5,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1207,'617991792','14','1423','RAMANTHAPUR(DIV 14)','8500','2013-10-01','K.SATHYANARAYANA','3-9-7/3','SHARADHA NAGAR','','','1',0.5,'F','T','13J-44126','M','2013-09-01',15,'2013-10-01',0,'2013-09-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1209,'617991931','10','0243','AUTONAGAR','8500','2013-10-13','KOMPALLY LAKSHMI','H.NO.4-3-2','ANMAGAL HAYATH NAGAR','','','1',0.5,'F','T','081144','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,2510,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1210,'617991957','10','0261','L.B.NAGAR','8500','2013-10-12','G.CHANDRA SEKARA REDDY','PLOT NO.17,','MADHURANAGAR COLONY,MANSOORABA','','','1',0.5,'F','T','12B.8031','M','2013-09-01',15,'2013-10-12',0,'2013-09-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1211,'617991966','10','0243','AUTONAGAR','8500','2013-10-13','KADIYALA.RENUSRI','PLOT NO.15','SHANTINAGAR,KALVANCHA','','','1',0.5,'F','T','13B.32400','M','2013-09-01',15,'2013-10-13',0,'2013-09-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1212,'617992044','16','1612','BUDVEL (DIV16)','8500','2013-12-20','P.BHOOPAL REDDY','PLOT NO 33','SAI KRISHNA COLONY','','','1',0.5,'F','T','13A22495','M','2014-01-01',12,'2014-02-19',25000,'2014-01-01',12,1255,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1215,'617992334','10','0243','AUTONAGAR','8500','2013-10-02','M.LAKSHMI DEVI','PLOT NO.5','KALSA HAYATH  NAGAR VILLEGE','','','1',0.5,'F','T','13G38350','L','2014-01-01',15,'2013-10-02',0,'2013-09-01',0,2510,2510,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1216,'617992420','14','1411','RADHIKA','8500','2013-12-13','SMT.CH.VENKATA RAMANA','HNO.1-1-52/30/A & B','SRI SAI NAGAR COLONY BESIDE PA','','','1',0.5,'F','T','1381352','M','2013-11-01',15,'2013-12-13',0,'2013-11-01',0,0,0,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1217,'617992471','03','0311','TOLI CHOWK','8500','2013-12-23','MOHAMMED ASIF KHAN','9-4-77/2/18','YOUSUF TEKRI','','','1',0.5,'F','T','13J50976','M','2014-01-01',4,'2014-02-14',9000,'2014-01-01',4,1255,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1218,'617992483','03','0312','GOLCONDA','8500','2013-12-25','NASEEM SULTANA','9-1-1/A/18','DEFENCE COLONY','','','1',0.5,'F','T','07853691','M','2013-11-01',15,'2013-12-25',0,'2013-11-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1219,'617992498','03','0312','GOLCONDA','8500','2013-12-25','HAMEEDA BEGUM','9-2-410/102/A','COMPANY BAGH','','','1',0.5,'F','T','13I43407','M','2013-11-01',15,'2013-12-25',0,'2013-11-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1220,'617992521','10','0241','SAROORNAGAR','8500','2013-11-11','MR.K.SAMBASIVA RAO','SYRVEY NO.9/1,OLD 9/6 NEW','DOCTORS COLONY,SAROOR NAGAR','','','2',2,'F','T','10180-N-13','L','2014-01-01',100,'2013-11-11',0,'2013-10-01',0,87540,87540,0,0,0,'F',80,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1223,'617992911','15','0932','MIYAPUR','8500','2014-01-03','P.RANGA REDDY','PLOT.NO.26,27','SRI SAI JYOTHI COLONY NEAR RED','','','1',0.5,'F','T','SA-134622','M','2013-12-01',15,'2014-01-03',0,'2013-12-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1224,'617992931','15','0932','MIYAPUR','8500','2014-01-02','P.JYOTHI','4-1/23.24.25/P','SRI SAIJYOTHI NAGAR NEAR REDDY','','','1',0.5,'F','T','SA-134535','M','2014-01-01',13,'2014-02-26',13000,'2014-01-01',13,27.5,0,0,0,0,'F',4,0,0,'2014-02-26',600,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1225,'617992946','15','0932','MIYAPUR','8500','2014-01-03','MEKALA THIRUPATHI REDDY','PLOT.NO.86,SY.NO.77TO89.','MADEENAGUDA(V) SERILINGAMPALLY','','','1',0.5,'F','T','SA-132142','M','2013-12-01',15,'2014-01-03',0,'2013-12-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1226,'617993050','05','0513','BOATS CLUB','8500','2013-12-23','WAHEEDA BEGUM','1-4-743&744','BHOLAKPUR','','','1',0.5,'F','T','13A45469','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,1255,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1227,'617993124','13','1301','ALWAL (Div13)','8500','2013-12-16','V.VIJAYA LAXMI','1-23-404/1','BHOODEVI NAGAR','','','1',0.5,'F','T','SA132910','M','2014-01-01',8,'2014-02-10',17000,'2014-01-01',8,1255,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1228,'617993144','13','1301','ALWAL (Div13)','8500','2013-10-19','BATHULA HYMAVATHI','1-31-892/2','BANK COLONY, SAI NAGAR, KHANAJ','','','1',0.5,'F','T','12B10819','M','2014-01-01',4,'2014-02-10',15000,'2014-01-01',4,2510,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1229,'617993261','09','0917','BHAGYANAGAR','8500','2013-10-09','CHOUTIMANJULA','PLOT NO 58&65','ALLWYN COLONY PHASE-2','','','1',0.5,'F','T','SA1329401','M','2013-09-01',15,'2013-10-09',0,'2013-09-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1230,'617993290','14','1411','RADHIKA','8500','2013-09-20','SRI. MUMMADI  VENKATA KRISHNA REDDY','PLOT.NO.52','MRR COLONY  NNCOLONY','','','1',0.5,'F','T','13813510','M','2013-08-01',15,'2013-09-20',0,'2013-08-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1231,'617993313','14','1411','RADHIKA','8500','2013-10-20','K.V.B.RAMA MOHAN RAO','PLOT NO91,SY.NO.455','BHAVANI NAGAR,','','','1',0.5,'F','T','13A33659','M','2013-09-01',15,'2013-10-20',0,'2013-09-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1232,'617993328','14','1411','RADHIKA','8500','2013-09-21','SRI.KRISHNA MURTHY','HNO.1-9-202/41','KUSHAIGUDA KAPRA','','','1',0.5,'F','T','SLUM','M','2013-08-01',15,'2013-09-21',0,'2013-08-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1233,'617993384','15','0614','MADHAPUR','8500','2013-12-21','R NARASIMHA GOUD','1-110/A/64','GOPAL REDDY NAGAR,KONDAPUR','','','1',0.5,'F','T','100235','M','2014-01-01',15,'2014-02-17',30000,'2014-01-01',15,1255,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1235,'617993854','03','0311','TOLI CHOWK','8500','2013-11-13','THOTA  INDRANI','8-1-284/OU/328/1','O.U COLONY','','','1',0.5,'F','T','13-G-13418','M','2014-01-01',21,'2014-02-25',63000,'2014-01-01',21,9172.5,0,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1238,'617993922','03','0311','TOLI CHOWK','8500','2013-11-28','MOHAMMED ABDUL HAKEEM','HNO 8-1-398/SE/6','HAKEEMPET','','','1',0.5,'F','T','13A-22264','M','2013-10-01',15,'2013-11-28',0,'2013-10-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1240,'617993952','03','0321','HUMAYUN NAGAR','8500','2013-11-02','SYED ALI','HNO.10-5-391/54/78/C/2','SYEDNAGAR 2ND,FIRST LANCER','','','1',0.5,'F','T','13-A-40111','M','2013-10-01',15,'2013-11-02',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1241,'617994126','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-10-10','K.JANARDHAN REDDY','PLOT NO.56','SHAKTHI NAGAR,JILLELAGUDA','','','1',0.5,'F','T','13-B-36211','M','2013-09-01',15,'2013-10-10',0,'2013-09-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1242,'617994146','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-10-10','LATHESH JOGA','H.NO:-8-6-876, CHRISTIAN','N.S.ROAD,  SAHEBNAGAR','','','1',0.5,'F','T','13-B-29864','L','2014-01-01',15,'2013-10-10',0,'2013-09-01',0,2510,2510,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1243,'617994151','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-10-09','V.LAKSHMI','PLOT NO.35','JAHANGIR NAGAR COLONY,CHINTALK','','','1',0.5,'F','T','13-B-25891','M','2014-01-01',18,'2014-02-16',72000,'2014-01-01',18,3093.2,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1244,'617994166','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-10-10','A.CHAKRAPANI','PLOT NO.24','SRINIDHI COLONY,KARMANGHAT','','','1',0.5,'F','T','13-B-28610','L','2014-01-01',15,'2013-10-10',0,'2013-09-01',0,2510,2510,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1245,'617995243','16','1611','HYDERGUDA','8500','2014-01-05','A.YADAIAH','PLOT NO 6','VENKATESHWARA COLONY UPPERPALL','','','1',0.5,'F','T','1313057653','M','2014-01-01',15,'2014-02-14',15000,'2014-01-01',15,627.5,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1246,'617995260','02','0231','SANTOSHNAGAR','8500','2013-11-25','D.BHASKAR RAO','17-1-391/T.54','SARASWATHI NAGAR','','','2',0.75,'F','T','NX-13-2801','M','2014-01-01',5,'2014-02-19',14000,'2014-01-01',5,8808,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1247,'617995328','10','1011','VAISHALINAGAR (DIV 10)','8500','2014-01-11','TARUN SHEKHAWAT','PLOT NO.238 WEST PART','SAI RAM NAGAR COLONY','','','1',0.5,'F','T','13K54326','M','2013-12-01',15,'2014-01-11',0,'2013-12-01',0,0,0,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1248,'617995358','10','1041','VANASTHALIPURAM (DIV 10)','8500','2014-01-08','SOMAPUDI LAXMI GOPINATH','PLOT NO. 81','SRSRINIVASAPURAM COLONY','','','1',0.5,'F','T','13J50752','M','2014-01-01',14,'2014-02-18',14000,'2014-01-01',14,0,0,0,0,0,'F',0,0,0,'2014-02-21',627.5,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1249,'617995498','14','1411','RADHIKA','8500','2013-10-03','S MAMATHA','PLOT.NO.26','N N COLONY','','','1',0.5,'F','T','13813519','M','2013-09-01',15,'2013-10-03',0,'2013-09-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1250,'617995510','14','1423','RAMANTHAPUR(DIV 14)','8500','2013-10-04','T.YADAGIRI REDDY','3-4-63/13/G/2','ARAVIND NAGAR','','','1',0.5,'F','T','13J50918','M','2013-09-01',15,'2013-10-04',0,'2013-09-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1251,'617995543','14','1412','HOUSING BOARD','8500','2013-12-17','SRI G PRABHAKAR AND OTHERS','5-2-104','THIRUMALA NAGAR','','','1',0.75,'F','T','13J1305','M','2013-11-01',50,'2013-12-17',0,'2013-11-01',0,0,0,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1252,'617995563','14','1412','HOUSING BOARD','8500','2013-11-22','V.V. GOWRI','PLOT NO 184/PART','TIRUMALA NAGAR','','','1',0.5,'F','T','13J44246','M','2013-10-01',15,'2013-11-22',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1253,'617995578','14','1412','HOUSING BOARD','8500','2013-11-20','SRI.M.SRINIVASULU','4-4-81/17&24P','VEERA REDDY COLONY, NACHARAM','','','1',0.5,'F','T','13A33933','M','2013-10-01',15,'2013-11-20',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1254,'617995597','12','0922','CHINTAL','8500','2014-01-05','SHAIK SHAKEEL AHMED','P.NO.13','GODAHAVARI HOMES (CHINTAL)','','','1',0.5,'F','T','SA-134902','M','2014-01-01',15,'2014-02-05',15000,'2014-01-01',15,0,0,0,0,0,'F',8,0,0,'2014-02-24',4880,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1255,'617995800','07','0732','TARNAKA','8500','2014-01-02','SREECONS SAI BRINDAVAN APARTMENTS BLOCK-A','12-13-702 & 703','ROAD NO 13 NAGARJUNA NAGAR COL','','','1',0.75,'F','T','13K3868','M','2014-01-01',15,'2014-02-18',15000,'2014-01-01',15,8525,0,0,0,0,'F',14,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1257,'617996010','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-10-07','S.YELLAIAH','PLOT NO.22','S.V.COLONY,BAIRAMALGUDA','','','1',0.5,'F','T','131.44501','L','2014-01-01',15,'2013-10-07',0,'2013-09-01',0,2510,2510,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1258,'617996025','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-10-07','B.RADHA DEVI','PLOT NO. 1&2 PART','URMILA NAGAR, HASTINAPURAM','','','1',0.5,'F','T','13B.322286','M','2013-09-01',15,'2013-10-07',0,'2013-09-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1259,'617996079','10','0243','AUTONAGAR','8500','2014-01-01','A . NIRMALA','PLOT NO .73','PAVANGIRI COLONY HYT','','','1',0.5,'F','T','13G38127','M','2013-12-01',15,'2014-01-01',0,'2013-12-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1260,'617996307','13','1323','GOWTHAM NAGAR','8500','2013-10-15','R.SAMPATHKUMAR','21-7','DAYANANDNAGAR','','','2',0.75,'F','T','75853-7-12','M','2013-09-01',50,'2013-10-15',0,'2013-09-01',0,0,0,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1261,'617996387','12','0922','CHINTAL','8500','2013-12-28','T.KOMURAIAH','P.NO. 30,31,36,37/MIG-II','APHB (OPP-IDPL COLONY)','','','1',0.75,'F','T','13K3925','M','2014-01-01',63,'2014-02-10',126000,'2014-01-01',63,9120.1,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1262,'617996680','12','0924','JEEDIMETLA','8500','2013-12-21','G. VENKATA  RAJU','PLOT NO 153/10','VENKATRAM NAGAR','','','1',0.5,'F','T','SA-132431','M','2014-01-01',8,'2014-02-05',15000,'2014-01-01',8,1255,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1263,'617997018','01','0131','DARUL SHIFA','8500','2013-09-06','MOHAMMED HANEEF RAWANI','22-3-947/23/D','PURANIHAVELI','','','1',0.5,'F','T','SLUM','M','2013-08-01',15,'2013-09-06',0,'2013-08-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1264,'617997081','01','0135','AZAMPURA','8500','2013-09-06','MOHDHAFEEZUDDIN','16-5-1/2','FARATNAGAR','','500023','1',0.5,'F','T','SLUM','M','2013-08-01',15,'2013-09-06',0,'2013-08-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1265,'617997172','03','0321','HUMAYUN NAGAR','8500','2013-12-16','SULTAN ABDUL AZIZ AND OTHERS REP BY GPA HOLDE','HNO.10-5-30/1','MASABTANK','','','2',1,'F','T','13-J-4652','M','2014-01-01',38,'2014-02-26',76000,'2014-01-01',38,10975,0,0,0,0,'F',15,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1266,'617997205','03','0311','TOLI CHOWK','8500','2013-12-17','RAMAKRISHNAMANDADIREDDY','8-1-299/1/105, PLOT NO 10','VETERINARY COLONY','','500008','1',0.5,'F','T','13893465','M','2014-01-01',25,'2014-02-18',50000,'2014-01-01',25,2227,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1267,'617997375','03','0342','KARWAN','8500','2013-11-20','B. SWAPNA','13-6-460/87','MAHESH NAGAR, KARWAN','','','1',0.5,'F','T','13-A-31946','M','2013-10-01',15,'2013-11-20',0,'2013-10-01',0,0,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1268,'617997426','03','0321','HUMAYUN NAGAR','8500','2013-12-15','SRI.JAGANNATH SURENDER KUMAR','HNO.10-5-16/1&10-5-16/1/A','MASABTANK,HUMAYUNAGAR','','','2',1,'F','T','NX-13-1174','M','2014-01-01',11,'2014-02-26',22000,'2014-01-01',11,14620,0,0,0,0,'F',20,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1269,'617997436','03','0311','TOLI CHOWK','8500','2013-11-15','MOHD MASOOD UDDIN AHMED','8-1-523/157','BEINDAVAN COLONY','','','1',0.75,'F','T','13-B-3355','M','2013-10-01',50,'2013-11-15',0,'2013-10-01',0,0,0,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1271,'617997589','03','0321','HUMAYUN NAGAR','8500','2013-11-09','SYED ABDUL HALEEM','10-5-391/57/1/1','AHMED NAGAR','','','1',0.5,'F','T','13-B-43161','M','2013-10-01',15,'2013-11-09',0,'2013-10-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1273,'617997632','03','0311','TOLI CHOWK','8500','2013-11-15','SMT.KHATEEJA KHATOON','HNO.8-1-398/PM/334','PARAMOUNT COLONY,RETHIBOWLI','','','1',0.5,'F','T','B-13072892','M','2013-10-01',15,'2013-11-15',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1274,'617997662','03','0321','HUMAYUN NAGAR','8500','2013-09-15','SRI MOTILAL SONI','10-4-37/A','HUMAYUN NAGAR,HYDERABAD','','','2',1,'F','T','13-B-2503','M','2014-01-01',48,'2014-02-15',242000,'2014-01-01',48,18426.3,0,0,0,0,'F',7,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1275,'617997759','03','0321','HUMAYUN NAGAR','8500','2013-10-28','SRI.FRANCIS','HNO.10-1-12/89','A.C.GUARDS,C I B QTRS,OPP MAHA','','','1',0.5,'F','T','','L','2013-09-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1276,'617997780','03','0311','TOLI CHOWK','8500','2013-11-01','SYED WAHEED AHMED','8-1-346/9','SABZA COLONY','','','1',0.5,'F','T','13-G-34910','M','2013-10-01',15,'2013-11-01',0,'2013-10-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1278,'617997833','03','0321','HUMAYUN NAGAR','8500','2013-11-11','MIR ABID ALI','10-5-381/A','SYED NAGAR,FIRST LANCER,HYDERA','','','1',0.5,'F','T','B-13073462','R','2014-01-01',15,'0001-01-01',0,'0001-01-01',0,0.5,0,0,0,0,'F',0,0,0,'2014-02-22',1882,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1279,'617997863','03','0311','TOLI CHOWK','8500','2013-11-15','MR.MOHAMMED IQBAL ALI KHAN','8-1-423/A/135','DIAMOND HILLS,SHAIKPET','','','1',0.5,'F','T','13-I-43432','M','2013-10-01',15,'2013-11-15',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1280,'617997878','03','0311','TOLI CHOWK','8500','2013-11-15','M.S.AKTHAR BEGUM','9-4-133/B','CHABRA ENCLAVE','','','1',0.5,'F','T','13-G-35029','M','2013-10-01',15,'2013-11-15',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1281,'617997968','10','0261','L.B.NAGAR','8500','2013-11-10','R.ANJAMMA','PLOT.NO.74','SARASWATHI NAGAR MANSOORABAD','','','1',0.5,'F','T','13B35168','L','2014-01-01',15,'2013-11-10',0,'2013-10-01',0,1882.5,1882.5,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1282,'617997988','10','0261','L.B.NAGAR','8500','2013-11-15','V.VENKATA SWIVA PRASAD','PLOT NO.130 & 131','KRUSHINAGAR COLONY,BANDLAGUDA','','','1',0.5,'F','T','2013A2141880','M','2013-10-01',15,'2013-11-15',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1283,'617998007','10','1021','SAHEBNAGAR (DIV 10)','8500','2014-01-12','G.RATHISHA','PLOT NO.48','SHIRDI SAI NAGAR COLONY,HASTHI','','','1',0.5,'F','T','13G38399','M','2013-12-01',15,'2014-01-12',0,'2013-12-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1284,'617998477','03','0331','MEHIDIPATNAM','8500','2014-01-19','GULAM US SAQLAIN','12-2-419/4','ALAPATHI NAGAR','','','2',0.75,'F','T','13G-2775','M','2014-01-01',24,'2014-02-18',24000,'2014-01-01',24,4029.5,0,0,0,0,'F',11,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1285,'617998510','03','0331','MEHIDIPATNAM','8500','2014-01-16','JUVVADIRAGHU','12-2-790/94','AYODYACOLONY','','','1',0.5,'F','T','134610','M','2013-12-01',15,'2014-01-16',0,'2013-12-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1286,'617998545','03','0311','TOLI CHOWK','8500','2014-01-19','MR.MOHAMMED ABDUL WAHEED','HNO.8-1-398/D/90,(PLOT NO','I A S COLONY ,HAKEEMPET','','','1',0.75,'F','T','NX-13-1102','M','2013-12-01',50,'2014-01-19',0,'2013-12-01',0,0,0,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1287,'617998632','02','0222','ASMANGARH','8500','2013-12-17','B.KUMAR AND B.SURYAKALA','HNO.16-2-741/52/A','ANDHRA BANK COLONY','','','1',0.5,'F','T','13-G-38308','M','2014-01-01',8,'2014-02-10',15000,'2014-01-01',8,0,0,0,0,0,'F',0,0,0,'2014-02-12',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1289,'617998653','03','0331','MEHIDIPATNAM','8500','2014-01-13','AWAD BIN ABDULLAH HAMZA','12-2-831/47','MIGH COLONY','','','2',1,'F','T','13-X-5192','M','2013-12-01',75,'2014-01-13',0,'2013-12-01',0,0,0,0,0,0,'F',18,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1290,'617998889','03','0341','OLD MALLEPALLY','8500','2013-11-27','MOHAMMED SALEEM UDDIN','12-1-582/1','SYED ALI GUDA','','','1',0.5,'F','T','13-A-43912','M','2013-10-01',15,'2013-11-27',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1291,'617998912','03','0331','MEHIDIPATNAM','8500','2013-11-07','V ANAND MOHAN','12-2-417/A/17/1','LIC COLONY, GUDIMALKAPUR','','500028','1',0.5,'F','T','13-I-44584','L','2014-01-01',15,'2013-11-07',0,'2013-10-01',0,1882.5,1882.5,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1292,'617999021','03','0331','MEHIDIPATNAM','8500','2014-01-04','SECRETARY CAFOWA','# 12-2-37/17/6&7','SRIRAM  NAGAR COLONY','','500028','2',1,'F','T','13-X-5166','M','2013-12-01',75,'2014-01-04',0,'2013-12-01',0,0,0,0,0,0,'F',24,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1293,'617999035','06','0611','JUBILEE HILLS','8500','2014-01-19','QUALITY CONSTRUCTIONS BUILDERS AND DEVELOPERS','8-3-230/W/25','WOMENS CO-OP SOCIETY,JUBILEE H','','','2',0.75,'F','T','13-K-4335','M','2014-01-01',29,'2014-02-18',29000,'2014-01-01',29,2936,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1294,'617999078','09','0913','HASMATHPET','8500','2013-12-05','S.MALLAMMA','9-5-44/13C','ANJAIH NAGAR,HASMATHPET','','','1',0.5,'F','T','SLUM','M','2014-01-01',2,'2014-02-12',5000,'2014-01-01',2,1255,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1295,'617999083','09','0913','HASMATHPET','8500','2013-12-05','MOHD.GHOUSIA BEGUM','9-2-72/5B','ABRAR NAGAR,HASMATHPET','','','1',0.5,'F','T','WRCS','M','2013-11-01',15,'2013-12-05',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1296,'617999098','09','0913','HASMATHPET','8500','2013-12-05','MOHD ABDUL WAHEED','9-2-86/1','MALA BASTHI,HASMATHPET','','','1',0.5,'F','T','WRCS','M','2013-11-01',15,'2013-12-05',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1297,'617999106','09','0913','HASMATHPET','8500','2013-12-02','M.NARSIMHA','8-4-106','HARIJAN BASTHI,OLDBOWENPALLY','','','1',0.5,'F','T','WRCS','M','2014-01-01',5,'2014-02-21',10000,'2014-01-01',5,1255,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1298,'617999131','09','0913','HASMATHPET','8500','2013-12-01','A.NARSIMHULU','9-5-28/1/1C','ANJAIAH NAGAR,HASMATHPET','','','1',0.5,'F','T','WRCS','M','2014-01-01',2,'2014-02-13',5000,'2014-01-01',2,1255,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1299,'617999146','09','0913','HASMATHPET','8500','2013-12-01','A.ASHWINI','9-2-72/22/8/6','ABRAR NAGAR,HASMATHPET','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-01',0,'2013-11-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1300,'617999289','09','0913','HASMATHPET','8500','2013-12-07','YASEEN KHATOON','8-2-92','BADEGUDA,OLDBOWENPALLY','','','1',0.5,'F','T','WRCS','M','2014-01-01',5,'2014-02-21',10000,'2014-01-01',5,1255,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1301,'617999294','09','0913','HASMATHPET','8500','2013-12-06','V.MUNESHWAR','8-3-110/1,PLOT NO 80','BADE GUDA,OLDBOWENPALLY','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-06',0,'2013-11-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1302,'617999302','09','0913','HASMATHPET','8500','2013-12-06','SULTANA','8-2-93/1','BADE GUDA,OLDBOWENPALLY','','','1',0.5,'F','T','WRCS','M','2014-01-01',5,'2014-02-21',10000,'2014-01-01',5,1255,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1303,'617999317','09','0913','HASMATHPET','8500','2013-12-01','C.H.KANAKAMMA','9-2-72/22/8/19','ABRAR NAGAR,HASMATHPET','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-01',0,'2013-11-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1304,'617999399','12','0924','JEEDIMETLA','8500','2013-12-25','NAVNEETLAXMAN','PLOT NO.148 AND 147 PART','NCL ENCLAVE','','','1',0.5,'F','T','13A-45192','M','2014-01-01',8,'2014-02-05',15000,'2014-01-01',8,1255,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1305,'617999412','12','0924','JEEDIMETLA','8500','2013-12-22','B.VENKATA RADDY','PLOT NO.65','SATYAM ENELAVE','','','1',0.5,'F','T','134554','M','2014-01-01',8,'2014-02-05',15000,'2014-01-01',8,0,0,0,0,0,'F',2,0,0,'2014-02-21',1255,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1306,'617999423','12','0922','CHINTAL','8500','2013-12-22','CH MALATHI','PLOT NO 262/PART (SOUTH S','MEENAKSHI ESTATES','','','1',0.5,'F','T','13-A-40119','M','2014-01-01',8,'2014-02-05',15000,'2014-01-01',8,1255,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1307,'617999432','12','0924','JEEDIMETLA','8500','2013-12-25','K.SRIKANTH','PLOT NO.64(SY.NO.50)','SATYAM ENCLAVE,JEEDIMETLA QUTU','','','1',0.5,'F','T','13-A-45223','M','2014-01-01',8,'2014-02-05',15000,'2014-01-01',8,1255,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1308,'617999698','12','0924','JEEDIMETLA','8500','2013-12-26','S. VISHWANATHA RAJU','P.NO.28','SATYAM ENCLAVE EAST','','','1',0.5,'F','T','13A-45392','M','2014-01-01',8,'2014-02-05',15000,'2014-01-01',8,1255,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1309,'617999879','10','0242','DILSHUKNAGAR','8500','2013-12-21','YECHURI NAGARATNAM','PLOT NO.8/B PART','KAMALANAGAR COLONY,GADDIANNARA','','','1',0.5,'F','T','13G38472','L','2014-01-01',15,'2013-12-21',0,'2013-11-01',0,1255,1255,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1311,'617999921','10','0244','ALKAPURI','8500','2013-10-23','SRI KASTURI YADAGIRI','PLOT NO.14, LINE ROAD NO.','L.B.NAGAR, HYDERABAD','','','1',0.75,'F','T','13H2912','M','2013-09-01',50,'2013-10-23',0,'2013-09-01',0,0,0,0,0,0,'F',7,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1312,'617999935','10','1031','MARUTHINAGAR (DIV 10)','8500','2013-10-21','SRI G. ASHWIN KUMAR','PLOT NO.12 PART, NAGESHWA','KOTHAPET VILLAGE, MARUTHINAGAR','','','1',0.75,'F','T','NX-13-1989','M','2014-01-01',10,'2014-02-28',38000,'2014-01-01',10,12230,0,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1313,'617999944','06','0612','BANJARA HILLS','8500','2013-11-16','SATYABHAMA BAI','8-2-316/F','BANJARA HILLS','','500034','2',0.75,'F','T','13B1749','M','2013-10-01',50,'2013-11-16',0,'2013-10-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1314,'617999955','10','1031','MARUTHINAGAR (DIV 10)','8500','2013-10-20','D.ANJALI','P.NO44','NAGESHWAR RAO COLONY','','','1',0.75,'F','T','13H2996','M','2014-01-01',12,'2014-02-28',50000,'2014-01-01',12,6851.6,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1315,'618000147','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-11-02','B. RENUKA RAO','1-5-1086/6&18','MANGAPURAM COLONY','','','1',0.5,'F','T','13057595','M','2013-10-01',15,'2013-11-02',0,'2013-10-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1316,'618000159','13','1303','YAPRAL (Div13)','8500','2013-11-02','KATKAM SRINIVAS','1-5-1083/210','MANGAPURAM COLONY','','','1',0.5,'F','T','1304467','M','2013-10-01',15,'2013-11-02',0,'2013-10-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1317,'618000160','13','1301','ALWAL (Div13)','8500','2013-12-25','KAILASH CHAND JAIN & MONIKA JAIN','1-31-62','SRI SATYA SAI ENCLAVE','','','1',0.5,'F','T','13057528','M','2014-01-01',11,'2014-02-10',22000,'2014-01-01',11,1255,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1318,'618000223','13','1301','ALWAL (Div13)','8500','2014-01-04','GANGA SRINIVAS','PLOT. NO.295, 296. SY. NO','SRI SATYA SAI ENCLAVE','','','1',0.75,'F','T','94555','M','2013-12-01',50,'2014-01-04',0,'2013-12-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1319,'618000263','13','1301','ALWAL (Div13)','8500','2014-01-06','S.S. SANDILYA','1-5-75/1','GANGAPUTHRA COLONY','','','1',0.5,'F','T','13091966','M','2014-01-01',11,'2014-02-10',11000,'2014-01-01',11,627.5,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1320,'618000307','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-11-25','MIRYANAM GOWRI SHANKAR','PLOT NO.17,SY.NO.4','SRINIDHI COLONY,KARMANGHAT','','','1',0.5,'F','T','13J50866','L','2014-01-01',15,'2013-11-25',0,'2013-10-01',0,1882.5,1882.5,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1321,'618000334','14','1421','HUBSIGUDA','8500','2011-06-01','A.PURSHOTHAM REDDY','1-9-19/4/B,PLOTNO.90','RAVINDRA NAGAR COLONY,HABSIGUD','','','1',0.5,'F','T','12345','M','2011-05-01',15,'2011-06-01',0,'2011-05-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1323,'618000435','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-11-25','KOYYADA RAVI KUMAR','PLOT NO.16,SY.NO.4','GOOD WILL ENCLAVE,SRINIDHI COL','','','1',0.5,'F','T','12B40043','L','2014-01-01',15,'2013-11-25',0,'2013-10-01',0,10995,10995,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1325,'618000719','10','0261','L.B.NAGAR','8500','2013-12-27','K.SUMATHI WIFE OF K.SATYANARAYANA REDDY','PLOT NO.257','ROCK TOWN COLONY','','','1',0.75,'F','T','13G3843','M','2013-11-01',50,'2013-12-27',0,'2013-11-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1326,'618000744','10','0261','L.B.NAGAR','8500','2013-11-12','SMT K.SUGUNAMMA','HNO.2-3-649/72,PLOT NO.72','SAINAGAR COLONY,NAGOLE,ROAD NO','','','1',0.75,'F','T','13G2800','M','2013-10-01',50,'2013-11-12',0,'2013-10-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1327,'618000754','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-12-30','SRI.B.SREENIVAS REDDY AND K.PRAMODHA KUMARI','PLOT NO.93','MADHAVA NAGAR COLONY KARMANGHA','','','1',0.75,'F','T','13K3855','M','2014-01-01',50,'2014-02-07',100000,'2014-01-01',50,7330,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1328,'618000794','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-10-01','B.NEERAJA','PLOT NO 2/B','SHAKTI NAGAR','','','2',1,'F','T','NX-13-1038','M','2014-01-01',54,'2014-02-18',218000,'2014-01-01',54,30698,0,0,0,0,'F',21,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1329,'618000802','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-11-10','V.VENKATESH AND OTHERS','PLOT NO-13 TO 15','GAYATHRI NAGAR , JILLELGUDA','','','2',0.75,'F','T','94760','M','2013-10-01',50,'2013-11-10',0,'2013-10-01',0,0,0,0,0,0,'F',20,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1331,'618000913','16','1611','HYDERGUDA','8500','2013-12-07','KHANDHE SHRAVAN KUMAR AND OTHERS','3-4-165/5 SOUMYA HOMES','HYDERGUDA','','','2',0.75,'F','T','13-B-1829','M','2014-01-01',64,'2014-02-13',128000,'2014-01-01',64,11704,0,0,0,0,'F',16,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1332,'618000951','09','0911','MOOSAPET','8500','2013-11-25','SRI.G.SATYANARAYANA','HNO.4-96/16 PART,PLOT NO.','PRAGATHI NAGAR','','','1',0.5,'F','T','01758-13','M','2014-01-01',5,'2014-02-17',14000,'2014-01-01',5,1882.5,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1333,'618001150','12','0922','CHINTAL','8500','2014-01-17','SANDIRI GOVARDHANREDDY','PLOT NOS 25 PART AND 26','M N REDDY NAGAR','','500055','1',0.5,'F','T','13A-33857','M','2014-01-01',15,'2014-02-05',15000,'2014-01-01',15,627.5,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1334,'618001444','12','0922','CHINTAL','8500','2014-01-22','SMT.K.BABY SAROJINI','PLOT NO.496/PART & 497/PA','PADMANAGAR-II QUTHBULLAPUR(V&M','','','2',0.75,'F','T','13K-4324','M','2014-01-01',9,'2014-02-11',9000,'2014-01-01',9,2,0,0,0,0,'F',16,0,0,'2014-02-26',5850,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1335,'618002257','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2014-01-28','INDRA    JAYARAJ','1-5-1004/3/3','BHOOPATHI RAO NAGAR','','','1',0.5,'F','T','13A3610','M','2013-12-01',15,'2014-01-28',0,'2013-12-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1336,'618002381','06','0611','JUBILEE HILLS','8500','2013-12-18','DR.S.VENKATESHWARA RAO','8-2-293/82/NL/140','MLA & MP\'S COLONY,JUBILEE HILL','','','1',0.75,'F','T','13J3626','M','2014-01-01',26,'2014-02-28',53000,'2014-01-01',26,3425.8,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1337,'618002783','06','0611','JUBILEE HILLS','8500','2013-12-27','K.PRASAD CHOWDARY','PLOT NO 1062, ROAD NO 46,','JUBILEE HILLS','','','1',0.5,'F','T','SA-134592','M','2014-01-01',9,'2014-02-15',18000,'2014-01-01',9,1255,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1338,'618002800','06','0613','THATTIKHANA','8500','2013-12-03','SRI G.YESWANTH REDDY AND OTHERS','8-2-293/82/B/55/A','ROAD NO.12,BANJARA HILLS,HYDER','','','2',1,'F','T','13000121','M','2013-11-01',75,'2013-12-03',0,'2013-11-01',0,0,0,0,0,0,'F',10,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1339,'618002840','06','0613','THATTIKHANA','8500','2013-11-13','E.VENKATA NARSIMHA REDDY','8-2-686/7/6/C,SY.NO.129/4','BANJARA HILLS,HYDERABAD','','','1',0.75,'F','T','NX-13-1735','M','2013-10-01',50,'2013-11-13',0,'2013-10-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1340,'618002943','12','0921','SHAPOORNAGAR','8500','2013-12-27','BHUNDA RAM','20-156/5','INDIRA NAGAR','','','1',0.5,'F','T','13057324','M','2014-01-01',8,'2014-02-05',15000,'2014-01-01',8,1255,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1341,'618003091','10','0261','L.B.NAGAR','8500','2014-01-01','G.V.S.N.SOMESHWAR RAO','PLOT NO.180','SRI SAI NAGAR COLONY,NAGOLE','','','1',0.75,'F','T','NX.13.1006','M','2013-12-01',50,'2014-01-01',0,'2013-12-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1342,'618003239','12','0924','JEEDIMETLA','8500','2013-10-15','JAYARESIDENCY','PLOT NOS.94,95 & 96','VENKATRAMNAGAR','','500055','2',1,'F','T','04-014286','M','2014-01-01',22,'2014-02-11',90000,'2014-01-01',22,0,0,0,0,0,'F',23,0,0,'2014-02-22',33614,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1343,'618003514','03','0311','TOLI CHOWK','8500','2013-09-17','MRS SAYEEDUNNISA','8-1-402/B/433','MINI GULSHAN COLONY,SHAIKPET','','','2',0.75,'F','T','13B-2238','M','2013-08-01',50,'2013-09-17',0,'2013-08-01',0,0,0,0,0,0,'F',7,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1344,'618003534','03','0311','TOLI CHOWK','8500','2013-08-17','FATIMA BEGUM','HNO.9-8-58/B/34/A','AHMED COLONY MOTIDARWAZA,MOHAM','','','2',0.75,'F','T','13B-1819','M','2013-07-01',50,'2013-08-17',0,'2013-07-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1345,'618003549','03','0311','TOLI CHOWK','8500','2013-09-17','MRS.NAZIA FATIMA AND OTHERS','8-1-423/A/338','DIAMOND HILLS','','','2',0.75,'F','T','88290','M','2013-08-01',50,'2013-09-17',0,'2013-08-01',0,0,0,0,0,0,'F',10,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1346,'618003665','01','0123','PATHERGATTI','8500','2014-01-20','SANTOSHI BAI','21-2-417/6/B','SHAKKARKOTA,PATTAERGATTI','','','1',0.5,'F','T','135943','M','2013-12-01',15,'2014-01-20',0,'2013-12-01',0,-500,0,0,0,0,'F',1,0,0,'2014-02-05',500,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1347,'618003797','03','0312','GOLCONDA','8500','2014-01-15','SMT.SALOCHANA DEVI','9-1-364/B/56','LANGER HOUSE,HYDERABAD','','','1',0.75,'F','T','6157844','M','2013-12-01',50,'2014-01-15',0,'2013-12-01',0,0,0,0,0,0,'F',7,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1348,'618003820','03','0342','KARWAN','8500','2014-01-30','SUNEEL KUMAR','13-6-439\\C|11','SATYANARAYANA NAGAR','','','1',0.5,'F','T','13J-50950','M','2013-12-01',15,'2014-01-30',0,'2013-12-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1349,'618003840','03','0342','KARWAN','8500','2014-01-07','G. RAMESH YADAV','13-6-457/10','GAYATHRI NAGAR, KARWAN','','','1',0.5,'F','T','100246','M','2013-12-01',15,'2014-01-07',0,'2013-12-01',0,0,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1350,'618004129','06','0622','FATHENAGAR','8500','2013-12-15','S.MOTI SINGH','7-1-282/C/1/28','LINGAIAH NAGAR,BALKAMPET,HYDER','','','1',0.75,'F','T','13706410','M','2013-11-01',50,'2013-12-15',0,'2013-11-01',0,0,0,0,0,0,'F',11,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1351,'618004189','06','0622','FATHENAGAR','8500','2013-12-22','SRI.P.PARASURAM AND OTHERS','HNO.7-1-307/14/B,7-1-307/','07/14/20,SUBASHNAGAR COLONY SA','','','2',0.75,'F','T','13J3448','M','2013-11-01',50,'2013-12-22',0,'2013-11-01',0,0,0,0,0,0,'F',12,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1352,'618004201','16','1611','HYDERGUDA','8500','2014-01-10','ARSHIA FAZAL','2-6-7/63','GOLDEN HIGHTS UPPERPALLY','','','2',0.75,'F','T','95640','M','2013-12-01',50,'2014-01-10',0,'2013-12-01',0,0,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1353,'618004287','07','0733','LALAPET','8500','2014-01-04','K.NIRANJANKUMAR GOUD','12-1-507/7/A/1','LAKSHMINAGAR','','','1',0.5,'F','T','13B8194','M','2013-12-01',15,'2014-01-04',0,'2013-12-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1354,'618004300','07','0733','LALAPET','8500','2014-01-24','SRI.G.KRISHNA','HNO.12-1-1388','SHANTINAGAR,NORTH LALAGUDA,SEC','','','1',0.5,'F','T','9093381','M','2013-12-01',15,'2014-01-24',0,'2013-12-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1355,'618004313','01','0111','BAHADURPURA','8500','2013-12-27','M.A. JABBAR','19-5-32/16/C/1/A','MAHMOOD NAGAR,KISHAN BAGH','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-27',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1356,'618004328','01','0111','BAHADURPURA','8500','2013-12-28','FEROZ KHAN','19-5-29/43/2/D','MAHMOOD NAGAR ,KISHAN BAGH','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-28',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1357,'618004348','01','0111','BAHADURPURA','8500','2013-12-22','ZAREENA BEGUM','19-4-339/1/A/7','KISHAN BAGH','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-22',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1358,'618004353','01','0111','BAHADURPURA','8500','2013-12-24','SYED RASOOL','19-4-280/B/115/104','KHAJA NAGAR,TADBAN','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-24',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1359,'618004368','01','0111','BAHADURPURA','8500','2013-12-22','RAZIA BEGUM','19-5-29/60/1-D','MAHMOOD NAGAR,KISHAN BAGH','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-22',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1360,'618004373','01','0111','BAHADURPURA','8500','2013-12-22','MRS.RASHEEDA BEE','19-5-31/A/26/4','NANDIMUSLAIGUDA,KISHAN BAGH','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-22',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1361,'618004388','01','0111','BAHADURPURA','8500','2013-12-19','MRS. TASNEEM JAHAN','19-4-339/12','CHIRAGHALI NAGAR,KISHAN BAGH,H','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-19',0,'2013-11-01',0,-213,0,0,0,0,'F',0,0,0,'2014-02-04',213,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1362,'618004393','01','0111','BAHADURPURA','8500','2013-12-23','ARUNA BAI KATEKAR','19-5-479/30/E','N M GUDA, SP NAGAR','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-23',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1363,'618004401','01','0111','BAHADURPURA','8500','2013-12-29','YASMEEN BEGUM','19-5-28/32/E/1','MAHMOOD NAGAR, KISHAN BAGH','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-29',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1364,'618004416','01','0111','BAHADURPURA','8500','2013-12-26','SMT SAFIA BEGUM','19-5-44/A/11/C','ASAD BABA NAGAR,NANDI MUSLAIGU','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-26',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1365,'618004421','01','0111','BAHADURPURA','8500','2013-12-26','QAMARUNNISSA BEGUM','19-4-279/A/33/B','NAWAB SAB KUNTTA','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-26',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1366,'618004436','01','0111','BAHADURPURA','8500','2013-12-23','MR MOHAMMED SUBHANI','19-4-430/B/46','BASTI NABI KAREEM','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-23',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1367,'618004441','01','0111','BAHADURPURA','8500','2013-12-18','MOHD ARIFUDDIN','19-4-430/1/15/A','B.N.K.COLONY','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-18',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1368,'618004456','01','0111','BAHADURPURA','8500','2013-12-26','SAFIA BEE','19-5-PLOT NO 35','N M GUDA, MAHMOOD NAGAR','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-26',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1369,'618004461','01','0111','BAHADURPURA','8500','2013-12-22','FAHMEEDA BEGUM','19-4-370/A/17','CHIRAG ALI NAGAR, KISHAN BAGH','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-22',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1370,'618004476','01','0111','BAHADURPURA','8500','2013-12-28','MRS.ARSHIYA JABEEN','19-5-17/A/36/1','SHAREEF COLONY','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-28',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1371,'618004481','01','0111','BAHADURPURA','8500','2013-12-20','SALMA SULTANA','19-4-368/18/A','CHIRAG ALI NAGAR, KISHAN BAGH','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-20',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1372,'618004496','01','0111','BAHADURPURA','8500','2013-12-20','SYED MOHIUDDIN','19-4-364/B/1','KONDAREDDYGUDA,KISHAN BAGH','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-20',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1373,'618004504','01','0111','BAHADURPURA','8500','2013-12-19','MOHD JAHANGIR','19-5-71/B','BAHADUR PURA MAHAMOOD NAGAR','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-19',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1374,'618004519','01','0111','BAHADURPURA','8500','2013-12-18','MOHD ABDUL HANEEF','19-5-32/A/88/1','ASAD BABA NAGAR,NANDI MUSLAIGU','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-18',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1375,'618004524','01','0111','BAHADURPURA','8500','2013-12-26','MOHD ABDUL HANEEF','19-4-366/1/A/37/1','CHIRAJ ALI NAGAR,KISHAN BAGH','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-26',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1376,'618004539','01','0111','BAHADURPURA','8500','2013-12-24','JUGAL KISHORE JAIN','19-5-2/4','DEVI BAGH,BAHADURPURA','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-24',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1377,'618004544','01','0111','BAHADURPURA','8500','2013-12-24','SIDDIQUA BEGUM','19-4-280/B/115/89','TADBAN,KHAJA PAHADI','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-24',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1378,'618004559','01','0111','BAHADURPURA','8500','2013-12-26','MAHAMOOD KHAN','4-14-43','HASSAN NAGAR','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-26',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1379,'618004564','01','0111','BAHADURPURA','8500','2013-12-25','AHMED KHAN','19-5-44/A/14/D/6/1','ASAD BABA NAGAR,KISHAN BAGH','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-25',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1380,'618004579','01','0111','BAHADURPURA','8500','2013-12-25','NUSRATH SULTANA','19-4-280/2/1/51/9/7/A','ANSARI ROAD,MIRALAM TANK','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-25',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1381,'618004584','01','0111','BAHADURPURA','8500','2013-12-20','MOHAMMED IBRAHIM KHAN','19-4-279/C/277','NAWABSAB KUNTA','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-20',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1382,'618004612','01','0111','BAHADURPURA','8500','2013-12-22','ATHER UNNISA','19-5-29/26/F/A','MAHMOOD NAGAR, KISHAN BAGH','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-22',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1383,'618004627','01','0111','BAHADURPURA','8500','2013-12-24','G KRISHNA VENI','19-5-479/5','N M GUDA  KISHAN BAGH','','','1',0.5,'F','T','WRCS','M','2013-11-01',15,'2013-12-24',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1384,'618004720','01','0111','BAHADURPURA','8500','2013-12-23','SMT.REHANA BEGUM','19-4-281/88/15','PEERLA BOWLI,SANJAY GANDHI NAG','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-23',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1386,'618004750','01','0121','DHOOD BOWLI','8500','2014-01-25','B.ARUNA','19-1-762/A','MAHARAJGUNJ','','','1',0.5,'F','T','WRCS','M','2013-12-01',15,'2014-01-25',0,'2013-12-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1388,'618004823','01','0111','BAHADURPURA','8500','2013-12-28','SHAHEEN BEGUM','19-4-280/B/51','KHAJA NAGAR,TADBAN,HYDERABAD','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-28',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1390,'618004843','01','0111','BAHADURPURA','8500','2013-12-27','NASREEN BEGUM','19-5-32/S/28/3/8(PLOT NO','NM GUDA,KISHAN BAGH','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-27',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1391,'618004858','01','0111','BAHADURPURA','8500','2013-12-28','NASEEM ARA','19-5-31/63/1/B PLOT NO.61','ASAD BABA NAGAR,KISHAN BAGH','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-28',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1393,'618004878','01','0111','BAHADURPURA','8500','2013-12-28','MOHD ISHAQ','19-4-280/B/115/24','TADBAN,KHAJA NAGAR','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-28',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1394,'618004883','01','0111','BAHADURPURA','8500','2013-12-27','MOHAMMED SHAHABUDDIN','19-5-28/36/E','NANDI MUSLAIGUDA','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-27',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1398,'618005000','01','0111','BAHADURPURA','8500','2013-12-29','MALAN BEE','19-5-44/A/18/H','N M GUDA','','','1',0.5,'F','T','WRCS','M','2013-11-01',15,'2013-12-29',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1399,'618005026','13','1303','YAPRAL (Div13)','8500','2014-01-07','VENKATARAMANAMEKALA','5-9-152/63','EXCISE COLONY, MAHALAXMIPURI','','500087','1',0.5,'F','T','13091891','M','2013-12-01',15,'2014-01-07',0,'2013-12-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1400,'618005031','13','1303','YAPRAL (Div13)','8500','2014-01-10','VVS STYANARAYANA JIDDU','5-9-64/24','MAHALAKSHMIPURI','','500087','1',0.5,'F','T','13091993','M','2013-12-01',15,'2014-01-10',0,'2013-12-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1401,'618005474','14','1412','HOUSING BOARD','8500','2013-10-01','J MEENA KUMARI','4-4-42/80&81P','KOUNDINYA NAGAR','','','1',0.5,'F','T','13K59618','M','2013-09-01',15,'2013-10-01',0,'2013-09-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1402,'618005530','14','1411','RADHIKA','8500','2013-09-20','SHAIK MAHAMMAD ISMAIL','1-1-29/2/2 & 11/A','MARUTHI NAGAR,KAPRA','','','1',0.5,'F','T','SLUM','M','2013-08-01',15,'2013-09-20',0,'2013-08-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1403,'618005651','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-12-07','SRI ERUVETI RAMULU','PLOT NO.10, SURYANAGAR CO','VAISHALINAGAR, HYDERABAD','','','1',0.5,'F','T','13B36099','M','2013-11-01',15,'2013-12-07',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1404,'618005666','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-12-08','BADDAM RAJASHEKAR','PLOT NO-A/361','GREEN PARK COLONY, ROAD NO7','','','1',0.5,'F','T','10-1-1242','M','2013-11-01',15,'2013-12-08',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1405,'618005910','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-11-01','G.RAMA MOHAN RAO AND OTHERS','HNO.17-1-382/N/39,40,41','NAGARJUNA COLONY VAISHALINAGAR','','','2',1,'F','T','12B2193','M','2013-10-01',75,'2013-11-01',0,'2013-10-01',0,0,0,0,0,0,'F',20,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1406,'618005975','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-11-10','V.LEEMYA','PLOT NI 43 SOUTH PART','SANTOSHI MATHA COLONY NORTH HA','','','1',0.5,'F','T','13H41558','M','2013-10-01',15,'2013-11-10',0,'2013-10-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1407,'618006103','10','0244','ALKAPURI','8500','2013-08-27','K.CHENNA REDDY','PLOT NO 10','SRI SHANKAR NAGAR','','','1',0.5,'F','T','13B24513','M','2013-07-01',15,'2013-08-27',0,'2013-07-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1408,'618006244','06','0622','FATHENAGAR','8500','2014-02-01','SMT.N.SARITHA','7-2-1735 & 7-2-1813/5/A','FATHENAGAR,SANATH NAGAR,HYDERA','','','1',0.75,'F','T','13K4367','M','2014-01-01',50,'2014-02-01',0,'2014-01-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1409,'618006254','06','0612','BANJARA HILLS','8500','2014-02-02','GHOUSIA BEGUM','8-2-469/4, ROAD NO.5,BANJ','HYDERABAD','','','1',0.75,'F','T','13K4203','M','2014-01-01',50,'2014-02-02',0,'2014-01-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1410,'618006340','12','0924','JEEDIMETLA','8500','2013-09-02','Y.PHILOMENAMMA','2-89/3/1','SUNDHAR NAGAR,SURARAM COLONY,J','','','1',0.5,'F','T','','L','2013-08-01',15,'0001-01-01',0,'0001-01-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1411,'618006658','06','0623','ERRAGADDA','8500','2013-10-26','B.GAMBHEER REDDY','8-3-168/4/44/A','BHAVANI NAGAR,ERRAGADDA','','500018','1',0.5,'F','T','13-B-26139','M','2013-09-01',15,'2013-10-26',0,'2013-09-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1413,'618006781','10','0244','ALKAPURI','8500','2013-10-06','N.PRASAD','PLOT NO.296','VASAVI COLONY BESIDE WATER TAN','','','1',0.75,'F','T','2013B2004439','M','2013-09-01',50,'2013-10-06',0,'2013-09-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1414,'618006804','10','0244','ALKAPURI','8500','2013-11-01','SRI K. MADHUSUDHAN RAO  SON OF SRI VEERAIAH','PLOT NO.60, SIRINAGAR COL','ALKAPURI, L.B.NAGAR, HYDERABAD','','','1',0.75,'F','T','13B.3310','M','2013-10-01',50,'2013-11-01',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1415,'618006818','10','1031','MARUTHINAGAR (DIV 10)','8500','2013-10-20','K.SRIKANTH','PLOT NO-51,  GAYATHRI PU','KOTHAPET  MARUTHINAGAR','','','1',0.75,'F','T','13J13902','M','2013-09-01',50,'2013-10-20',0,'2013-09-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1416,'618006868','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-10-02','V.SUDHA MANI','PLOT NO.66','NAGARJUNA COLONY, HASTINAPURAM','','','1',0.5,'F','T','13H41702','M','2013-09-01',15,'2013-10-02',0,'2013-09-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1417,'618006873','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-10-02','K.KAVITHA','PLOT NO. 77& 78','SATYA SAI NAGAR, JILLELAGUDA','','','1',0.5,'F','T','0518','M','2013-09-01',15,'2013-10-02',0,'2013-09-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1418,'618007065','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-12-21','MAHABOOB ALI','P.NO 219,8-6-505','SRINIVASAPURAM COLONY','','','1',0.5,'F','T','13G38459','M','2013-11-01',15,'2013-12-21',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1419,'618007075','10','0261','L.B.NAGAR','8500','2014-01-07','DR.M.MOHAN RAO','PLOT NO.99','KRUSHINAGAR COLONY,BANDLAGUDA','','','1',0.5,'F','T','237265','M','2013-12-01',15,'2014-01-07',0,'2013-12-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1420,'618007132','10','0243','AUTONAGAR','8500','2014-01-06','KORE SHIVA KUMAR','PLOT NO .44','KAMALANAGAR','','','1',0.75,'F','T','13K3896','M','2013-12-01',50,'2014-01-06',0,'2013-12-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1421,'618007261','03','0312','GOLCONDA','8500','2013-09-16','R.RANDHEER SINGH','9-1-224/A/2/34/2','PRASHANTH NAGAR, LANGER HOUSE','','','1',0.5,'F','T','13A-49147','M','2013-08-01',15,'2013-09-16',0,'2013-08-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1426,'618007479','12','0924','JEEDIMETLA','8500','2014-02-01','D.  APPA RAO','H NO 2-89/52/4','RAJULASWAY NAGAR','','500055','1',0.5,'F','T','SLUM','M','2014-01-01',15,'2014-02-01',0,'2014-01-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1429,'618007809','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-12-07','G.VENKAT REDDY','PLOT NO.56','SREE RAMA AYODYA NAGAR COLONY,','','','1',0.5,'F','T','13J.44611','M','2013-11-01',15,'2013-12-07',0,'2013-11-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1430,'618007834','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-12-10','CH.NARENDER REDDY','PLOT NO.69','TEACHERS COLONY,PHASE-III EST.','','','1',0.5,'F','T','13J.44111','M','2013-11-01',15,'2013-12-10',0,'2013-11-01',0,0,0,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1431,'618007849','10','1021','SAHEBNAGAR (DIV 10)','8500','2014-01-06','M.VAMSIDHAR REDDY','PLOT NO.13','PARVATHAMMA ENCLAVE,SOUTH HAST','','','1',0.5,'F','T','13-G-38155','M','2013-12-01',15,'2014-01-06',0,'2013-12-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1432,'618007869','10','1021','SAHEBNAGAR (DIV 10)','8500','2014-01-03','SARASWATHIRACHAMALLA','PLOT NO 366','RAGHAVENDRA COLONY','','500097','1',0.5,'F','T','13J-50816','M','2013-12-01',15,'2014-01-03',0,'2013-12-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1433,'618007899','10','0241','SAROORNAGAR','8500','2014-01-05','SRI CHANDRA PRAKASH BOGA AND OTHERS','PLOT NO.3,SY.NO.9/2,WARD','SRI VENKATESHWARA COLONY,SAROO','','','2',0.75,'F','T','13K-3761','M','2013-12-01',50,'2014-01-05',0,'2013-12-01',0,0,0,0,0,0,'F',10,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1434,'618007937','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-10-10','PUNREDDY JYOTHI','PLOT.NO.98&99PART','INDIRAPRASTHA COLONY PH II','','','1',0.5,'F','T','2013-A2-115664','M','2013-09-01',15,'2013-10-10',0,'2013-09-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1435,'618007942','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-10-28','P. PRASAD','PLOT NO. 158','SRINIVASA PURAM COLONY','','','1',0.5,'F','T','13-B-44201','M','2013-09-01',15,'2013-10-28',0,'2013-09-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1436,'618008061','10','0261','L.B.NAGAR','8500','2013-10-25','P.NEERAJA','PLOT NO.36,RAOD NO.4','AJAY NAGAR,BANDLAGUDA','','','1',0.5,'F','T','13J.44617','M','2013-09-01',15,'2013-10-25',0,'2013-09-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1437,'618008081','10','0261','L.B.NAGAR','8500','2013-12-18','SREERAMOJU PANDU RANGA CHARY','PLLOT NO.39 WESTERN PART','ROAD NO.3,LALITHA NAGAR COLONY','','','1',0.5,'F','T','13H-41681','M','2013-11-01',15,'2013-12-18',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1438,'618008096','10','0261','L.B.NAGAR','8500','2013-12-15','SRI K. MURALI KRISHNA REDDY','PLOT NO.98, SRINIVASA NAG','BANDLAGUDA, NAGOLE, L.B.NAGAR,','','','1',0.5,'F','T','13J.44495','M','2013-11-01',15,'2013-12-15',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1439,'618008133','10','0243','AUTONAGAR','8500','2013-10-25','B . JAIPAL REDDY','PLOT NO . 221 & 222 PART','BHAGYALATHA BDL COLONY','','','1',0.75,'F','T','13-B-2682','M','2013-09-01',50,'2013-10-25',0,'2013-09-01',0,0,0,0,0,0,'F',11,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1440,'618008144','10','0261','L.B.NAGAR','8500','2013-12-19','K.RAJASHEKAR','PLOT NO.297','ROCK TOWN COLONY,MANSOORABAD','','','2',0.75,'F','T','NX-12-1561','M','2013-11-01',50,'2013-12-19',0,'2013-11-01',0,0,0,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1441,'618008177','09','0917','BHAGYANAGAR','8500','2014-02-01','M.VIJAY KUMAR','22-153/1','JOSHVA SOCIETY KUKATPALLY','','','1',0.75,'F','T','NX-13-1759','M','2014-01-01',50,'2014-02-01',0,'2014-01-01',0,0,0,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1442,'618008230','16','1612','BUDVEL (DIV16)','8500','2014-01-28','R.VIJAYA LAKSHMI','6-2-8/3','SHIVARAMPALLY','','','1',0.5,'F','T','0151526','M','2013-12-01',15,'2014-01-28',0,'2013-12-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1444,'618008416','03','0331','MEHIDIPATNAM','8500','2014-02-02','LIBRA SHELTERS PVT LTD','PLOT NO 133','DATTATREYA COLONY','','500028','2',1,'F','T','13-J-4663','M','2014-01-01',75,'2014-02-02',0,'2014-01-01',0,0,0,0,0,0,'F',15,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1445,'618008556','15','1511','CHANDA NAGAR','8500','2013-12-15','P.VISHWANATH SARMA','PLOT.NO.59 SY.NO.52(PART)','SHILPA ENCLAVE CHANDA HYDEABAD','','','1',0.75,'F','T','12-B-1662','M','2013-11-01',50,'2013-12-15',0,'2013-11-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1446,'618008687','03','0311','TOLI CHOWK','8500','2014-01-30','G SATYANARAYANA','8-1-284/OU/530','O U COLONY, SHAIKPET, HYD','','','1',0.5,'F','T','284','M','2013-12-01',15,'2014-01-30',0,'2013-12-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1447,'618008692','03','0311','TOLI CHOWK','8500','2014-02-04','ANJUM FATIMA','8-1-332/3/A/172','ARAVIND NAGAR COLONY','','','1',0.5,'F','T','13K-55590','M','2014-01-01',15,'2014-02-04',0,'2014-01-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1448,'618008734','06','0611','JUBILEE HILLS','8500','2014-01-22','ATLASAMPURNA','8-2-293/82/A/839/E PART','JUBILEEHILLS','','','1',0.75,'F','T','NX-13-1056','M','2013-12-01',50,'2014-01-22',0,'2013-12-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1449,'618008749','06','0611','JUBILEE HILLS','8500','2014-01-25','SRI K.SIVA PRASAD AND OTHERS','8-2-293/82/NL/49,PLOT NO.','COOP.H.B.SOC.LTD,JUBILEE HILLS','','','2',0.75,'F','T','13B2630','M','2013-12-01',50,'2014-01-25',0,'2013-12-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1450,'618008794','06','0611','JUBILEE HILLS','8500','2014-01-26','RAJEEV AURANGA BADKAR','HNO.8-2-293/82/PN/31,PLOT','PRASHASAN NAGAR','','','1',0.75,'F','T','13K4288','M','2013-12-01',50,'2014-01-26',0,'2013-12-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1451,'618008822','06','0611','JUBILEE HILLS','8500','2014-01-20','ANUGU INDRASEN REDDY','8-2-293/82/A/479&479/1','ROAD NO.21,JUBILEE HILLS,HYD.','','','1',0.75,'F','T','13K.3742','M','2013-12-01',50,'2014-01-20',0,'2013-12-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1452,'618008951','03','0311','TOLI CHOWK','8500','2014-01-21','MOHAMMED MAHMOOD UL HASAN ANSARI','9-4-135/A/71','RAGHAVE COLONY','','','1',0.5,'F','T','111051','M','2013-12-01',15,'2014-01-21',0,'2013-12-01',0,0,0,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1453,'618008986','03','0311','TOLI CHOWK','8500','2014-02-04','HSAEENA PARVEEN','8-1-423/A/137','DIAMOND HILLS','','','1',0.5,'F','T','9429593','M','2014-01-01',15,'2014-02-04',0,'2014-01-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1454,'618009170','10','0261','L.B.NAGAR','8500','2013-11-19','SMT. MARIYADA MANGAMMAWIFE OF SRI M. SRINIVAS','PLOT NO.146, INDRAPRASTA','MANSOORABAD, L.B.NAGAR, HYDERA','','','1',0.5,'F','T','13-H-30861','M','2013-10-01',15,'2013-11-19',0,'2013-10-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1455,'618009485','10','0244','ALKAPURI','8500','2013-10-10','SRI P.TIRUMALESHWAR REDDY','PLOT NO.A-6','LAXMINAGAR COLONY,ROAD NO.2,AL','','','1',0.75,'F','T','13g2712','M','2013-09-01',50,'2013-10-10',0,'2013-09-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1456,'618009759','10','0244','ALKAPURI','8500','2013-09-03','SUDHARANI KODAKANDLA','PLOT NO.M/8','VASAVI COLONY,ROAD NO.1/A','','','1',0.5,'F','T','2013A2141859','M','2013-08-01',15,'2013-09-03',0,'2013-08-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1457,'618010176','09','0911','MOOSAPET','8500','2014-02-12','SRI.S.KESHAVA RAO','PLOT NO.613/B & PLOT NO.6','SRI VIVEKANANDA NAGAR,BORABAND','','','1',0.5,'F','T','13K55485','M','2014-01-01',15,'2014-02-12',0,'2014-01-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1458,'618010194','05','0511','GANDHINAGAR','8500','2014-01-27','SMT.M.H.BABITHA VARDHAN','1-1-508/1/B','GANDHI NAGAR,NEW BAKARAM,MUSHE','','','1',0.5,'F','T','MJ131680','M','2013-12-01',15,'2014-01-27',0,'2013-12-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1459,'618010259','06','0623','ERRAGADDA','8500','2014-02-06','S.S.D.CONSTRUCTIONS','8-3-164/K/198','KALYAN NAGAR VENTURE 3','','500018','2',0.75,'F','T','12.B.9786','M','2014-01-01',50,'2014-02-06',0,'2014-01-01',0,0,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1460,'618010329','12','0922','CHINTAL','8500','2014-01-01','A PRAVEENKUMARGOUD OTHERS','PLOT NO 2 & 3','VIMANPURI COLONY','','','2',0.75,'F','T','13K.4193','M','2013-12-01',50,'2014-01-01',0,'2013-12-01',0,0,0,0,0,0,'F',15,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1461,'618010338','12','0924','JEEDIMETLA','8500','2014-01-01','M/S.NEO DATTA SAI DEVELOPERS','PLOT NO.371 PART, 372,390','SUBASH NAGAR JEEDIMETLA, QUTUB','','','2',0.75,'F','T','NX12-2187','M','2013-12-01',50,'2014-01-01',0,'2013-12-01',0,0,0,0,0,0,'F',16,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1462,'618010343','12','0924','JEEDIMETLA','8500','2014-01-03','NITTALA GOPAL KRISHNA MURTHY','6-303/3/A','SRI KRISHNA NAGAR','','','1',0.75,'F','T','NX-12-1969','M','2013-12-01',50,'2014-01-03',0,'2013-12-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1464,'618010369','12','0922','CHINTAL','8500','2013-10-11','P.SANTHOSH KUMAR','PLOT NO.94','VIVEKANANDA NAGAR,CHINTAL QUTU','','','1',0.5,'F','T','13800222','M','2013-09-01',15,'2013-10-11',0,'2013-09-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1465,'618010389','12','0922','CHINTAL','8500','2013-10-15','ARAVELLI KIRAN KUMAR','PLOT NO.63','MANIKYA NAGAR','','','1',0.5,'F','T','12A1345','M','2013-09-01',15,'2013-10-15',0,'2013-09-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1466,'618010402','12','0922','CHINTAL','8500','2013-11-01','P.S RATNA PRABHA','PLOT  NO.70/P','PADMA NAGAR- PH-I','','','1',0.5,'F','T','13802571','M','2013-10-01',15,'2013-11-01',0,'2013-10-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1467,'618010442','12','0922','CHINTAL','8500','2013-11-01','HYMA CHINTA','7-25& 26','PET BASHEERA BAD','','','1',0.5,'F','T','4064','M','2013-10-01',15,'2013-11-01',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1468,'618010776','03','0331','MEHIDIPATNAM','8500','2014-02-08','MR.ZAFER MOHIUDDIN','12-2-458/4','HILL CALONY MURAD NAGAR','','','1',0.75,'F','T','NX-13-1965','M','2014-01-01',50,'2014-02-08',0,'2014-01-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1469,'618010844','03','0311','TOLI CHOWK','8500','2014-02-11','MOHAMMED ZAHEER UL HASAN','8-1-329/A/1/14/1','KOH-E-SAR COLONY','','','1',0.75,'F','T','nx-13-1311','M','2014-01-01',50,'2014-02-11',0,'2014-01-01',0,0,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1470,'618010859','03','0311','TOLI CHOWK','8500','2014-02-11','MRS.TAHNIYATH SAMINA','8-1-299/36','AL HAMRA COLONY .SHAIKPET','','','1',0.75,'F','T','nx-13-1002','M','2014-01-01',50,'2014-02-11',0,'2014-01-01',0,0,0,0,0,0,'F',9,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1471,'618011300','03','0311','TOLI CHOWK','8500','2014-02-03','P SURESH CHANDRA BABU JI','8-1-43/1/A/8/A','SATYA COLONY','','','1',0.5,'F','T','13G3484','M','2014-01-01',15,'2014-02-03',0,'2014-01-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1472,'618011320','03','0311','TOLI CHOWK','8500','2014-01-21','AAYESHA NISHATH','8-1-297/2/E/8','FALCON VALLEY','','','1',0.5,'F','T','06053159','M','2013-12-01',15,'2014-01-21',0,'2013-12-01',0,0,0,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1473,'618011355','03','0311','TOLI CHOWK','8500','2013-12-04','ABDUL SAJID','HNO.9-3-238/A/17/1','AKBERPURA TOLICHOWKI','','','1',0.5,'F','T','88130','M','2013-11-01',15,'2013-12-04',0,'2013-11-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1474,'618011360','03','0311','TOLI CHOWK','8500','2014-01-26','KHAJA NAYEEMUDDIN','9-4-131/1/B/27/B/1','NADEEM COLONY TOLICHOWKI','','','1',0.5,'F','T','14','M','2013-12-01',15,'2014-01-26',0,'2013-12-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1475,'618011470','03','0342','KARWAN','8500','2014-01-10','P.SUJATHA','13-6-748/1/2','KARWAN HYDERABAD','','','1',0.5,'F','T','13J50643','M','2013-12-01',15,'2014-01-10',0,'2013-12-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1476,'618011614','03','0311','TOLI CHOWK','8500','2014-01-21','MOHAMMED JAFER','9-4-131/N/74','NEERAJA COLONY','','','1',0.5,'F','T','06065081','M','2013-12-01',15,'2014-01-21',0,'2013-12-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1477,'618011649','03','0311','TOLI CHOWK','8500','2014-01-20','ABDUL WAJID','HNO.9-3-238/A/17/2','AKBERPURA,TOLICHOWKI','','','1',0.5,'F','T','88084','M','2013-12-01',15,'2014-01-20',0,'2013-12-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1478,'618011654','03','0311','TOLI CHOWK','8500','2014-01-16','QHUDSIA MAZHER','8-1-299/B/33','SHAIKPET','','','1',0.75,'F','T','32','M','2013-12-01',50,'2014-01-16',0,'2013-12-01',0,0,0,0,0,0,'F',9,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1479,'618011669','03','0311','TOLI CHOWK','8500','2014-01-17','P.BALRAJ','8-1-346/30','SABZA COLONY,TOLICHOWKI,SHAIKP','','','1',0.5,'F','T','13K54833','M','2013-12-01',15,'2014-01-17',0,'2013-12-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1480,'618011702','03','0311','TOLI CHOWK','8500','2014-01-28','SYED MUJEEB ALI','9-4-131/1/B/25','NADEEM COLONY,SHAIKPET,HYDERAB','','','1',0.5,'F','T','13A22153','M','2013-12-01',15,'2014-01-28',0,'2013-12-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1481,'618011717','03','0311','TOLI CHOWK','8500','2014-02-10','MANZOOR AHMED','8-1-402/442&443/1','MINI GULSHAN COLONY,TOLICHOWKI','','','2',0.75,'F','T','12B-2178','M','2014-01-01',50,'2014-02-10',0,'2014-01-01',0,0,0,0,0,0,'F',9,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1482,'618011737','03','0311','TOLI CHOWK','8500','2013-12-14','MRS.AMTUL ZULJALAL AFRA','8-1-297/2/E/14','FALCON VALLEY,SHAIKPET','','','1',0.5,'F','T','06-05183','M','2013-11-01',15,'2013-12-14',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1483,'618011757','03','0311','TOLI CHOWK','8500','2013-12-07','IDRIS AHMED KHAN AND AZMEENA SULTANA','8-1-297/2/E/5','FALCON VALLEY SHAIKPET','','','1',0.5,'F','T','13-A-45440','M','2013-11-01',15,'2013-12-07',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1484,'618011993','15','0614','MADHAPUR','8500','2013-12-25','SHIVRATAN SHARMA(SHIVA SAI RESIDENCY)','PLOT.NO.75/P SY.NO.8','KOTHAGUDA SERILINGAMPALLY GHMC','','','1',0.75,'F','T','Nx-13-1846','M','2013-11-01',50,'2013-12-25',0,'2013-11-01',0,0,0,0,0,0,'F',7,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1486,'618012082','15','0614','MADHAPUR','8500','2014-02-01','SMT.M.VIJAYA LAKSHMI','PLOT NO.20 IN SY.NO.47,48','RAIDURG PAIGAH(V),SERLINGAMPAL','','','1',0.75,'F','T','NX-13-1001','M','2014-01-01',50,'2014-02-01',0,'2014-01-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1487,'618012110','15','0614','MADHAPUR','8500','2014-02-08','B.NAVEEN RAO','PLOT NO 18','Krithika Layout,Madhapur','','','2',1,'F','T','07-1-717','M','2014-01-01',75,'2014-02-08',0,'2014-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1488,'618012130','15','0614','MADHAPUR','8500','2014-02-10','VANAMA SOMA SUNDARAMV.S.SUNDARAM RESIDENCY','PLOT NO.69 SY.NO.70','JAGRUTHI COLONY, KONDAPUR, MAD','','','2',1,'F','T','1125001861','M','2014-01-01',75,'2014-02-10',0,'2014-01-01',0,0,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1489,'618012150','15','0614','MADHAPUR','8500','2014-02-10','PENUMAKA SUBBA RAO','PLOT NO.3, SY.NO.70','JAGRUTHI COLONY, KONDAPUR, SER','','','1',1,'F','T','1125002335','M','2014-01-01',75,'2014-02-10',0,'2014-01-01',0,0,0,0,0,0,'F',15,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1490,'618012336','15','0614','MADHAPUR','8500','2014-01-04','S KRISHNA VENI','P.NO.894','SIDDIQUE NAGAR,GACHIBOWLI','','','1',0.5,'F','T','13G37842','M','2013-12-01',15,'2014-01-04',0,'2013-12-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1491,'618012424','15','0614','MADHAPUR','8500','2014-01-18','SMT.M.MANJULA','PLOT NO.39','NEW PJR NAGAR','','','1',0.5,'F','T','13A22135','M','2013-12-01',15,'2014-01-18',0,'2013-12-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1492,'618012512','15','0614','MADHAPUR','8500','2014-02-02','GURRAM HARINI','P.NO.106P','MASEED BANDA,KONDAPUR','','','1',0.5,'F','T','SA132821','M','2014-01-01',15,'2014-02-02',0,'2014-01-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1494,'618012547','15','0614','MADHAPUR','8500','2014-02-02','MOHD SHUJAUDDIN','P.NO.143','SCB NAGAR,NEW HAFEEZPET','','','1',0.5,'F','T','13800146','M','2014-01-01',15,'2014-02-02',0,'2014-01-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1496,'618013098','03','0311','TOLI CHOWK','8500','2013-12-14','MR.MAHMOOD ALI KHAN','8-1-297/2/E/2','FALCON VALLEY,SHAIKPET','','','1',0.5,'F','T','06-053158','M','2013-11-01',15,'2013-12-14',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1497,'618013236','03','0342','KARWAN','8500','2014-01-22','N SATYAM','13-6-448/A/48','HERA NAGAR','','','1',0.5,'F','T','SLUM','M','2013-12-01',15,'2014-01-22',0,'2013-12-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1498,'618013884','02','0231','SANTOSHNAGAR','8500','2013-11-07','SAYEED MOHAMMED','17-1-178/A/79 (PART)','SRINAGAR COLONY,MADANNAPET','','','1',0.5,'F','T','33988','M','2013-10-01',15,'2013-11-07',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1499,'618013927','02','0231','SANTOSHNAGAR','8500','2013-11-08','SYED SIRAJ UDDIN','17-1-196/1/B/A','QASIM COLONY','','','1',0.5,'F','T','35471','M','2013-10-01',15,'2013-11-08',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1500,'618013931','13','1301','ALWAL (Div13)','8500','2013-10-24','C. CHANDRAKALA','1-31-28','SATYA SAI ENCLAVE','','','1',0.75,'F','T','13H2977','M','2013-09-01',50,'2013-10-24',0,'2013-09-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1501,'618014004','16','1611','HYDERGUDA','8500','2014-01-10','M.LAKSHMI','PLOT NO 56/P','VASUDEVA REDDY NAGAR COLONY AT','','','1',0.75,'F','T','F13-1242','M','2013-12-01',50,'2014-01-10',0,'2013-12-01',0,0,0,0,0,0,'F',5,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1502,'618014024','16','1611','HYDERGUDA','8500','2013-12-06','MR.VASI MOHD KHAN AND OTHERS','PLOT NO.5,6,34 & 35,SY.NO','UPPAR PALLY(V),RAJENDRA NAGAR(','','','2',0.75,'F','T','13J3598','M','2013-11-01',50,'2013-12-06',0,'2013-11-01',0,0,0,0,0,0,'F',25,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1503,'618014132','16','1611','HYDERGUDA','8500','2014-01-10','N.SRIKANTH REDDY','PLOT NO 51','SEERIMALLY NAGAR COLONY','','','2',0.75,'F','T','2013-0021','M','2013-12-01',50,'2014-01-10',0,'2013-12-01',0,0,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1504,'618014200','16','1611','HYDERGUDA','8500','2013-12-06','HABEEBUNNISSA','PLOT NO.7 & 30,SY.NO.39 &','RAJENDRA NAGAR(M)','','','2',0.75,'F','T','13J3591','M','2013-11-01',50,'2013-12-06',0,'2013-11-01',0,0,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1505,'618014222','03','0342','KARWAN','8500','2014-02-12','A. SRINIVAS','13-6-460/56','MAHESH NAGAR, KARWAN','','','1',0.5,'F','T','12A41890','M','2014-01-01',15,'2014-02-12',0,'2014-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1506,'618014358','03','0311','TOLI CHOWK','8500','2014-02-14','SHAIK ABDUL RAHEEM','8-1-68/3/51,PLOT NO.51','NEW JAI HIND COLONY,SHAIKPET,H','','','1',0.5,'F','T','110022','M','2014-01-01',15,'2014-02-14',0,'2014-01-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1507,'618014378','03','0311','TOLI CHOWK','8500','2014-02-12','ASRA ASMATH','8-1-40/A/32/A','SAMATHA COLONY','','','1',0.5,'F','T','1161546','M','2014-01-01',15,'2014-02-12',0,'2014-01-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1508,'618014522','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-12-25','SOSALE NARAYANA SESHADRI','1-5-509/1, PLOT NO.304','SURYA NAGAR,FATHER BALAIAH NAG','','500010','1',0.5,'F','T','12B14080','M','2013-11-01',15,'2013-12-25',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1509,'618014622','03','0311','TOLI CHOWK','8500','2014-02-14','SHAIK ABDUL RASOOL','8-1-68/3/61,PLOT NO.61','NEW JAIHIND C OLONY,SHAIKPET,H','','','1',0.5,'F','T','110188','M','2014-01-01',15,'2014-02-14',0,'2014-01-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1510,'618014702','02','0231','SANTOSHNAGAR','8500','2013-11-06','FARHATH ARA BEGUM','17-1-182/S/98','SALAHUDDIN NAGAR','','','1',0.5,'F','T','11B5714','M','2013-10-01',15,'2013-11-06',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1511,'618014788','05','0532','SHIVAM','8500','2014-02-05','MOHD LAYEEQ','2-3-48/4/1','QUADRI BAGH','','','1',0.5,'F','T','SLUM','M','2014-01-01',15,'2014-02-05',0,'2014-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1513,'618014913','02','0231','SANTOSHNAGAR','8500','2013-11-07','MRS.SYEDA GOWHER','17-1-180/3/3','DARAB JUNG COLONY','','','1',0.5,'F','T','12B5143','M','2013-10-01',15,'2013-11-07',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1514,'618014933','02','0231','SANTOSHNAGAR','8500','2013-11-06','MOHAMMED MAHMOOD','17-1-182/B/25/A/10/O','SALAR NAGAR,SANTOSH NAGAR','','','1',0.5,'F','T','57143','M','2013-10-01',15,'2013-11-06',0,'2013-10-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1515,'618014971','02','0235','BALAPUR','8500','2013-12-08','SMT.D.SHARADA','HNO.18-8-412/C','LALITHA BAGH,UPPUGUDA','','','1',0.5,'F','T','Slum','M','2013-11-01',15,'2013-12-08',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1516,'618015052','10','0261','L.B.NAGAR','8500','2013-12-04','SRI.A.SHYAM SUNDER REDDY','HNO.12-1-2/3','SRINIVASA NAGAR COLONY NAGOLE','','','1',0.5,'F','T','13A3519','M','2013-11-01',15,'2013-12-04',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1517,'618015068','10','0244','ALKAPURI','8500','2013-11-15','K.NARASINGAMMA','PLOT NO.11 EASTERN PART','NEW NAGOLE,','','','1',0.75,'F','T','13B2677','M','2013-10-01',50,'2013-11-15',0,'2013-10-01',0,0,0,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1518,'618015073','10','0244','ALKAPURI','8500','2013-11-10','PILARASETTY SRIDEVI','PLOT NO.70','R.K.PURAM,ROAD NO.4','','','2',0.75,'F','T','13H2957','M','2013-10-01',50,'2013-11-10',0,'2013-10-01',0,0,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1519,'618015116','10','0244','ALKAPURI','8500','2013-12-05','P.SWETHA REDDY','PLOT NO.38,SOUTH EAST PAR','GREEN HILLS COLONY,','','','2',1,'F','T','13J4620','M','2013-11-01',75,'2013-12-05',0,'2013-11-01',0,0,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1520,'618015156','10','0244','ALKAPURI','8500','2013-11-02','SREERAM VENKAT RAO','PLOT NO 14','HARIPURICOLONY','','','2',0.75,'F','T','13J3535','M','2013-10-01',50,'2013-11-02',0,'2013-10-01',0,0,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1522,'618015196','10','0244','ALKAPURI','8500','2013-10-10','K.INDRASENA REDDY','PLOT NO89','NEW NAGOLE','','','1',0.75,'F','T','13B1766','M','2013-09-01',50,'2013-10-10',0,'2013-09-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1523,'618015219','10','0244','ALKAPURI','8500','2013-12-02','L.LALITHA','PLOT NO.72','ROAD NO.14,GREEN HILLS COLONY','','','1',0.75,'F','T','13J3514','M','2013-11-01',50,'2013-12-02',0,'2013-11-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1524,'618015251','02','0235','BALAPUR','8500','2013-12-08','P. PANDU','18-8-278/46/A','RAKSHAPURAM COLONY','','','1',0.5,'F','T','Slum','M','2013-11-01',15,'2013-12-08',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1525,'618015303','06','0611','JUBILEE HILLS','8500','2014-02-02','P.VISWARUPAM','8-2-293/82/J/111/491 ,','ROAD NO.87,JUBILEE HILLS','','500033','1',0.5,'F','T','13K58694','M','2014-01-01',15,'2014-02-02',0,'2014-01-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1526,'618015328','06','0621','SOMAJIGUDA','8500','2014-02-17','SYED MAHMOOD HUSSAIN','6-3-674/4(PART)','PANJAGUTTA HYDERABAD','','','2',0.75,'F','T','14A1145','M','2014-01-01',50,'2014-02-17',0,'2014-01-01',0,0,0,0,0,0,'F',15,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1527,'618015379','05','0513','BOATS CLUB','8500','2013-12-31','MOHD SALEEM AHMED SIDDIQUI','H.NO.1-4-752/B,BHOLAKPUR','H.NO.1-4-752/B,BHOLAKPUR MUSHE','','','1',0.5,'F','T','SLUM','M','2013-11-01',15,'2013-12-31',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1530,'618015447','05','0513','BOATS CLUB','8500','2014-01-24','MOHD MUJEEB UR RAHMAN','HNO.1-4-882/4/1','BAKARAM MUSHEERABAD','','','1',0.5,'F','T','SLUM','M','2013-12-01',15,'2014-01-24',0,'2013-12-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1531,'618015511','05','0511','GANDHINAGAR','8500','2014-01-24','M V V S N MURTHY AND M JHANSI VANI','1-1-712','GANDHINAGAR','','','1',0.75,'F','T','4285','M','2013-12-01',50,'2014-01-24',0,'2013-12-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1532,'618015545','02','0235','BALAPUR','8500','2013-12-08','SYED SHOUKAT HUSSAIN','18-8-142/A','DARGAH BERHANE SHAH SAHIB','','','1',0.5,'F','T','113552','M','2013-11-01',15,'2013-12-08',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1533,'618015570','02','0235','BALAPUR','8500','2013-12-08','SYED SHOUKAT HUSSAIN','18-8-140/9','DARGHA BURHANESHAHA','','','1',0.5,'F','T','113560','M','2013-11-01',15,'2013-12-08',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1534,'618015646','05','0532','SHIVAM','8500','2014-02-03','G. RAJA NARASAIAH','2-3-790/15/K/6','TULASIRAM NAGAR','','','1',0.5,'F','T','SLUM','M','2014-01-01',15,'2014-02-03',0,'2014-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1535,'618015652','06','0621','SOMAJIGUDA','8500','2014-02-02','SMT.NOOR JAHAN BEGUM','6-3-778','PANJAGUTTA','','','2',0.75,'F','T','12B1703','M','2014-01-01',50,'2014-02-02',0,'2014-01-01',0,0,0,0,0,0,'F',9,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1536,'618015686','05','0532','SHIVAM','8500','2014-02-05','MIR YOUNUSALI','2-3-43','QUADRIBAGH','','500013','1',0.5,'F','T','SLUM','M','2014-01-01',15,'2014-02-05',0,'2014-01-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1538,'618015735','07','0641','PRAKASHNAGAR','8500','2014-02-08','SRI FORTUNE BUILDERS','1-11-219,1-11-219/D & 1-1','ERUKALA BASTI,BEGUMPET,HYDERAB','','','2',2,'F','T','5002996','M','2014-01-01',100,'2014-02-08',0,'2014-01-01',0,0,0,0,0,0,'F',65,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1539,'618015756','03','0341','OLD MALLEPALLY','8500','2014-02-04','MOHD NASEERUDDIN','12-1-331 & 12-1-331/A','HASANBAGH,DATTATREYA COLONY,AS','','','2',1.5,'F','T','1140004854','M','2014-01-01',100,'2014-02-04',0,'2014-01-01',0,0,0,0,0,0,'F',50,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1540,'618015782','05','0531','ADIKMET DMA-2','8500','2013-12-12','D.YADAIAH','PLOT NO .8.','BAGH AMBERPET','','','1',0.5,'F','T','B17634','M','2013-11-01',15,'2013-12-12',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1541,'618015795','07','0722','MARREDPALLY','8500','2014-02-12','MAHESHAMARAM','10-3-32/9/40','STREET NO. 9, EAST MAREDPALLY','','','1',0.75,'F','T','215679','M','2014-01-01',50,'2014-02-12',0,'2014-01-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1542,'618015874','05','0513','BOATS CLUB','8500','2013-12-31','MOHD NASEERUDDIN','1-4-27/71/25','P.S.COLONY,BHOLAKPUR,HYDERABAD','','','1',0.5,'F','T','13813535','M','2013-11-01',15,'2013-12-31',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1543,'618015928','06','0612','BANJARA HILLS','8500','2013-11-01','J.VENKATESWARLU','8-2-601/B/A-2','ROAD NO.10,JUBILEE HILLS HYDER','','','2',0.75,'F','T','NX-13-1391','M','2013-10-01',50,'2013-11-01',0,'2013-10-01',0,0,0,0,0,0,'F',9,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1544,'618016003','02','0231','SANTOSHNAGAR','8500','2013-11-08','SYEDA RAZIYA','17-1-104/6/A(PART)','KUMAR WADI,EDI BAZAR','','','1',0.5,'F','T','13075387','M','2013-10-01',15,'2013-11-08',0,'2013-10-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1545,'618016377','10','1021','SAHEBNAGAR (DIV 10)','8500','2014-01-12','SMT KOPPU LALITHAMMA','PLOT NO.42','ANUPAMA NAGAR,N.S.RAOD,HASTINA','','','1',0.5,'F','T','13J50861','M','2013-12-01',15,'2014-01-12',0,'2013-12-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1546,'618016450','10','1021','SAHEBNAGAR (DIV 10)','8500','2014-02-03','GANTA PADMAVATHI','PLOT NO . 1','OMKER NAGAR HASTHINA PURAM','','','1',0.5,'F','T','13K54739','M','2014-01-01',15,'2014-02-03',0,'2014-01-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1547,'618016464','10','0243','AUTONAGAR','8500','2014-02-03','Y . UDAYA LAKSHMI','PLOT NO . 31','PAVANGIRI COLONY','','','1',0.5,'F','T','13K54592','M','2014-01-01',15,'2014-02-03',0,'2014-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1548,'618016538','10','1011','VAISHALINAGAR (DIV 10)','8500','2014-02-02','T.PRAVEEN KUMAR','PLOT NO.179,','DATHU NAGAR,','','','1',0.5,'F','T','13K-58795','M','2014-01-01',15,'2014-02-02',0,'2014-01-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1549,'618016636','10','1021','SAHEBNAGAR (DIV 10)','8500','2014-01-10','SALEEMA BEGUM AND HASEENA BEGUM','PLOT NO.83,HNO.8-7-94/83','HASTINAPURAM,DWARAKA NAGAR NAG','','','1',0.5,'F','T','13-21230','M','2013-12-01',15,'2014-01-10',0,'2013-12-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1550,'618016680','10','0243','AUTONAGAR','8500','2014-02-04','NANDAMURI  VENU','PLOT NO . 25 & 26 PART','PAVANGIRI COLONY','','','1',0.5,'F','T','13K54734','M','2014-01-01',15,'2014-02-04',0,'2014-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1551,'618016827','02','0231','SANTOSHNAGAR','8500','2013-12-18','SRI M.BHEEM REDDY','HNO.17-1-391/T/129','SARASWATHI NAGAR,SANKESHWARA B','','','1',0.5,'F','T','13-13090523','M','2013-11-01',15,'2013-12-18',0,'2013-11-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1552,'618016970','10','0261','L.B.NAGAR','8500','2013-12-02','P.BALAMANI','PLOT NO.129/B','MALLIKARJUNA NAGAR,CHINTALAKUN','','','1',0.5,'F','T','2013-060','M','2013-11-01',15,'2013-12-02',0,'2013-11-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1553,'618017034','10','0261','L.B.NAGAR','8500','2013-11-25','M.KAVITHA REDDY','PLOT NO.136','MADHURANAGAR COLONY,MANSOORABA','','','1',0.5,'F','T','12B49696','M','2013-10-01',15,'2013-11-25',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1555,'618017084','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-10-06','V.RAM REDDY','PLOT NO.25 EXTENSION','ANUPAMA NAGAR COLONY,N.S.ROAD','','','1',0.5,'F','T','13G34712','M','2013-09-01',15,'2013-10-06',0,'2013-09-01',0,0,0,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1556,'618017107','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-10-10','T.ANANTH REDDY','P.NO. 59','TEACHERS COLONY','','','1',0.5,'F','T','13I44776','M','2013-09-01',15,'2013-10-10',0,'2013-09-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1557,'618017167','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-11-09','B.SUDHAKAR REDDY','PLOT NO.15','A.P.S.E.B.COLONY,SAGAR ROAD,SA','','','1',0.5,'F','T','13I43467','M','2013-10-01',15,'2013-11-09',0,'2013-10-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1558,'618017172','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-12-24','AKULA RACHI REDDY','PLOT NO.26','SHAKTHINAGAR,KARMANGHAT','','','1',0.5,'F','T','13J44154','M','2013-11-01',15,'2013-12-24',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1559,'618017217','10','0242','DILSHUKNAGAR','8500','2013-10-05','K.SUPRIYA.','P.NO.A/264','THAPAVANCOLONY,KARMANGHAT,SARO','','','1',0.5,'F','T','06050401','M','2013-09-01',15,'2013-10-05',0,'2013-09-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1560,'618017260','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-12-13','T.ARUNA','PLOT NO.39.S.PART','ABYUDAYA NAGAR COLONY','','','1',0.5,'F','T','13J50613','M','2013-11-01',15,'2013-12-13',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1561,'618017383','15','1511','CHANDA NAGAR','8500','2014-02-13','SHAH JAHAN  BEGUM','2-31/H/5/1 PLOT.NO.28','CITIZEN COLONY TARA NAGAR HYD','','','1',0.5,'F','T','842109','M','2014-01-01',15,'2014-02-13',0,'2014-01-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1562,'618017398','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-11-04','J.YADIAH','PLOT NO.38','SRI SHAKTHI NAGAR,JILLELAGUDA','','','1',0.5,'F','T','13H41896','M','2013-10-01',15,'2013-11-04',0,'2013-10-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1563,'618017405','10','0243','AUTONAGAR','8500','2013-12-20','G . DASHARATHAM','PLOT NO . 12','PAVANGIRI COLONY','','','1',0.5,'F','T','13J44463','M','2013-11-01',15,'2013-12-20',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1564,'618017431','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-11-10','B.SUNITHA AND OTHERS','PLOT NO.253,SY.NO.8/3','MADHAVA NAGAR,KARMANGHAT','','','1',0.5,'F','T','13I43485','M','2013-10-01',15,'2013-11-10',0,'2013-10-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1566,'618017504','10','1011','VAISHALINAGAR (DIV 10)','8500','2013-11-11','M.JANARDHANA RAO AND OTHERS','PLOT NO.35/A & 35/B','RTC.COLONY','','','2',1,'F','T','13B32288','M','2013-10-01',75,'2013-11-11',0,'2013-10-01',0,0,0,0,0,0,'F',15,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1567,'618017534','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-11-10','K. KARUNAKAR REDDY','PLOT NO.61 W.PART','MADAVA NAGAR .ROAD NO.1','','','1',0.5,'F','T','13G38236','M','2013-10-01',15,'2013-11-10',0,'2013-10-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1568,'618017549','10','1041','VANASTHALIPURAM (DIV 10)','8500','2013-11-11','Y BHANU PRASAD','PLOT NO 180','FCI.COLONY.V.PURAM','','','1',0.75,'F','T','13B3322','M','2013-10-01',50,'2013-11-11',0,'2013-10-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1569,'618017569','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-09-05','M.BHARATHAMMA','PLOT NO 74','APSEB COLONY,KARMANGHAT SAGAR','','','1',0.5,'F','T','13J50550','M','2013-08-01',15,'2013-09-05',0,'2013-08-01',0,0,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1570,'618017581','10','0242','DILSHUKNAGAR','8500','2013-12-19','DR.S.VENKATESWAR RAO','13-10-10/1/F','NEW GADDIANNARAM COLONY GOUTHA','','','1',0.75,'F','T','13J3405','M','2013-11-01',50,'2013-12-19',0,'2013-11-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1571,'618017597','16','1611','HYDERGUDA','8500','2014-01-10','P.VENKATRAM REDDY','PLOT NO 9A & 9B','VENKARESHWARA COLONY UPPERPALL','','','1',0.5,'F','T','13A45162','M','2013-12-01',15,'2014-01-10',0,'2013-12-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1572,'618017677','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-12-30','K.VINODA','PLOT NO.7','SHAKTHINAGAR,KARMANGHAT','','','1',0.5,'F','T','2013-A2141854','M','2013-11-01',15,'2013-12-30',0,'2013-11-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1573,'618017697','15','1511','CHANDA NAGAR','8500','2014-02-13','NAIDU RAVINDER','2-36/2/9/29','SHILPA ENCLAVE CHANDA NAGAR HY','','','1',0.5,'F','T','12112731','M','2014-01-01',15,'2014-02-13',0,'2014-01-01',0,0,0,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1574,'618017713','16','1611','HYDERGUDA','8500','2014-01-12','ASHFAQUE JAFARI','2-4-72/116','FORT VIEW','','','1',0.5,'F','T','12A13098','M','2013-12-01',15,'2014-01-12',0,'2013-12-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1575,'618017730','15','1511','CHANDA NAGAR','8500','2014-02-13','P.VENKATESHWARA RAO','2-36/2/9/88','SHILPA ENCLAVE CHANDA NAGAR HY','','','1',0.5,'F','T','842204-13','M','2014-01-01',15,'2014-02-13',0,'2014-01-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1576,'618017819','10','0244','ALKAPURI','8500','2013-10-28','G.MUTYALU','11-14-9/B','GREEN HILLS COLONY','','','1',0.5,'F','T','13G38465','M','2013-09-01',15,'2013-10-28',0,'2013-09-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1577,'618017848','15','1511','CHANDA NAGAR','8500','2014-02-13','V.JAYA KUMAR','2-36/2/3/85','SHILPA ENCLAVE CHANDA NAGAR HY','','','1',0.5,'F','T','12112726','M','2014-01-01',15,'2014-02-13',0,'2014-01-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1578,'618017893','15','1511','CHANDA NAGAR','8500','2014-02-13','V.RENUKA DEVI','PLOT.NO.66','SHILPA ENCLAVE CHANDA NAGAR SE','','','1',0.5,'F','T','134930','M','2014-01-01',15,'2014-02-13',0,'2014-01-01',0,0,0,0,0,0,'F',7,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1579,'618017941','15','1511','CHANDA NAGAR','8500','2014-02-13','VENKATARAMAN SUBRAMANIYAM','PLOT.NO.93(PART)','SHILPA ENCLAVE CHANDA NAGAR HY','','','1',0.5,'F','T','12112726','M','2014-01-01',15,'2014-02-13',0,'2014-01-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1580,'618017956','15','1511','CHANDA NAGAR','8500','2014-02-13','VELGA SRIDHAR','PLOT.NO.95','SHILPA ENCLAVE CHANDA NAGAR HY','','','1',0.5,'F','T','134767','M','2014-01-01',15,'2014-02-13',0,'2014-01-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1582,'618018144','10','0244','ALKAPURI','8500','2013-11-25','NEELA  LAKSHMINARAYANA','PLOT NO.186','VASAVI COLONY,ALKAPURI','','','1',0.75,'F','T','11-001326','M','2013-10-01',50,'2013-11-25',0,'2013-10-01',0,0,0,0,0,0,'F',6,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1584,'618019456','15','0614','MADHAPUR','8500','2014-02-18','VIJAYA KUMAR SHARMA AND OTHERS','H.NO.1-60/30/199/135','ANJAIAH NAGAR','','','1',0.5,'F','T','13K54661','M','2014-01-01',15,'2014-02-18',0,'2014-01-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1586,'618019715','15','0614','MADHAPUR','8500','2014-02-19','G JEEVITH REDDY','1-89/A/1G,P.NO.16,SY.NO.5','VASANTH MEBRALD ROAD GUTTALA B','','','2',0.75,'F','T','13H2955','M','2014-01-01',50,'2014-02-19',0,'2014-01-01',0,0,0,0,0,0,'F',10,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1587,'618019720','15','0614','MADHAPUR','8500','2014-02-19','G MAHIPAL YADAV','2-33','IZZATHNAGAR,KHANAMET VILLAGE','','','1',0.5,'F','T','13A15824','M','2014-01-01',15,'2014-02-19',0,'2014-01-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1588,'618019920','14','1411','RADHIKA','8500','2013-10-01','G. SRIKANTH','1-10-1/213/11','CHAKRI PURAM COLONY','','','1',0.5,'F','T','13800246','M','2013-09-01',15,'2013-10-01',0,'2013-09-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1589,'618020010','10','0243','AUTONAGAR','8500','2013-10-20','G.RAJESHWARI','4-12-836','ROAD NO.13 DWARAKAMAI NAGAR BA','','','1',0.75,'F','T','13b3347','M','2013-09-01',50,'2013-10-20',0,'2013-09-01',0,0,0,0,0,0,'F',12,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1590,'618020230','16','1611','HYDERGUDA','8500','2013-12-10','RUKMANI DEVI AGARWAL','PLOT NO 66','PLEASANT PARK UPPERPALLY','','','1',0.75,'F','T','95680-9-13','M','2013-11-01',50,'2013-12-10',0,'2013-11-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1591,'618020245','16','1611','HYDERGUDA','8500','2013-12-10','ROOP RANI AGARWAL','PLOT NO 101 & 102/P','NEW FRENDS COLONY','','','1',0.5,'F','T','13205313','M','2013-11-01',15,'2013-12-10',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1592,'618020341','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2014-02-01','S.BHAGYA LAXMI','1-5-1092/64','MANGAPURAM COLONY','','','2',0.75,'F','T','92624','M','2014-01-01',50,'2014-02-01',0,'2014-01-01',0,0,0,0,0,0,'F',9,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1593,'618020404','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2013-11-18','M. RAVINDER REDDY','1-5-816/3','CHINNA NNA THOTA','','','1',0.75,'F','T','98175','M','2013-10-01',50,'2013-11-18',0,'2013-10-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1594,'618020664','10','1021','SAHEBNAGAR (DIV 10)','8500','2013-10-12','D.MRUDULA','PLOT NO.137','APSEB COLONY,','','','1',0.5,'F','T','13I.47718','M','2013-09-01',15,'2013-10-12',0,'2013-09-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1595,'618020751','10','0243','AUTONAGAR','8500','2014-01-02','V.JANARDHAN REDDY','PLOT NO.77','VINAYAKA NAGAR,HAYATHNAGAR','','','1',0.5,'F','T','13K.59627','M','2013-12-01',15,'2014-01-02',0,'2013-12-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1596,'618020786','10','0243','AUTONAGAR','8500','2013-12-14','B . MADHAV','PLOT NO .100','PAVANGIRI COLONY','','','1',0.5,'F','T','13I.44612','M','2013-11-01',15,'2013-12-14',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1597,'618020814','10','0243','AUTONAGAR','8500','2013-12-14','MD . AZAM ALI','PLOT NO.31','SRI PADMAVATHI COLONY HYT','','','1',0.5,'F','T','13J.50891','M','2013-11-01',15,'2013-12-14',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1598,'618020829','10','0243','AUTONAGAR','8500','2013-12-25','SMT.B.VENKATA RATNAMMA','PLOT NO.173 SYNO.31A&32 P','SHARADA NAGAR','','','1',0.5,'F','T','13G34831','M','2013-11-01',15,'2013-12-25',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1599,'618020874','10','0243','AUTONAGAR','8500','2013-12-13','D . SHRAVAN KUMAR','PLOT NO . 342','DEFENCE COLONY','','','1',0.5,'F','T','13J.50892','M','2013-11-01',15,'2013-12-13',0,'2013-11-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1602,'618021711','16','1621','MAILERDEV PALLY','8500','2013-10-25','V MAHESH KUMAR','MIG 84','MADHUBAN COLONY','','','1',0.5,'F','T','13A38508','M','2013-09-01',15,'2013-10-25',0,'2013-09-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1603,'618021812','05','0512','DOMALGUDA','8500','2014-02-19','C.S.MOULI AND OTHERS','1-2-412/3/2 & 1-2-412/2/1','GAGAN MAHAL COLONY','','','2',0.75,'F','T','14A-1182','M','2014-01-01',50,'2014-02-19',0,'2014-01-01',0,0,0,0,0,0,'F',10,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1604,'618021820','05','0511','GANDHINAGAR','8500','2014-02-23','SMT VASANTHA KUMARI AND OTHERS','1-1-774 & 774/1','GANDHI NAGAR','','','2',0.75,'F','T','14A-1132','M','2014-01-01',50,'2014-02-23',0,'2014-01-01',0,0,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1605,'618021847','05','0512','DOMALGUDA','8500','2014-02-15','SHYAMALA CHANDRA APARTMENTS','1-2-54/4','DOMALGUDA','','500029','2',0.75,'F','T','20116/57865','M','2014-01-01',50,'2014-02-15',0,'2014-01-01',0,0,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1606,'618021852','05','0512','DOMALGUDA','8500','2014-02-18','ADHARSH KUMAR BEDI AND OTHERS','1-2-412/4 & 1-2-412/1/1','GAGAN MAHAL COLONY','','','2',0.75,'F','T','14A-1138','M','2014-01-01',50,'2014-02-18',0,'2014-01-01',0,0,0,0,0,0,'F',10,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1607,'618021860','05','0511','GANDHINAGAR','8500','2014-02-16','SRI.SERI VIJAYANAND REDDY','HNO.1-10-59&1-10-59/1 PLO','ASHOKNAGAR,HYDERABAD','','','2',0.75,'F','T','13-B5469','M','2014-01-01',50,'2014-02-16',0,'2014-01-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1608,'618021927','05','0513','BOATS CLUB','8500','2014-02-10','SRI.K.VEERABHADRA RAO AND OTHERS','HNO.1-3-183/40/21/51 PLOT','P&T COLONY','','','2',1,'F','T','617643','M','2014-01-01',75,'2014-02-10',0,'2014-01-01',0,0,0,0,0,0,'F',8,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1609,'618021940','05','0512','DOMALGUDA','8500','2014-01-10','HEMALATHA APARTMENT','1-2-412 & 412/A','DOMALGUDA,GAGAN MAHAL,HYDERABA','','','2',0.75,'F','T','6164234','M','2013-12-01',50,'2014-01-10',0,'2013-12-01',0,0,0,0,0,0,'F',10,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1611,'618022095','07','0712','BOIGUDA','8500','2014-02-12','HERALD MATHIAS SELVA KUMAR','6-4-361/23','BOLAKPUR','','','1',0.75,'F','T','2011.6157808','M','2014-01-01',50,'2014-02-12',0,'2014-01-01',0,0,0,0,0,0,'F',4,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1612,'618022103','07','0712','BOIGUDA','8500','2014-01-02','K.MARUTHI','6-4-424/4','KRISHNANAGARCOLONY','','','1',0.75,'F','T','NX-13-1111','M','2013-12-01',50,'2014-01-02',0,'2013-12-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1613,'618022471','13','1302','FATHER BALAIAHNAGAR (Div13)','8500','2014-02-18','P. JAGADISHWAR REDDY','2-10-17/30','BALAJI ENCLAVE,MACHA BOLLARAM','','','1',0.5,'F','T','13K58151','M','2014-01-01',15,'2014-02-18',0,'2014-01-01',0,0,0,0,0,0,'F',1,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1614,'618022613','10','0242','DILSHUKNAGAR','8500','2014-02-03','SMT SHAILAJA AND OTHERS','11-11 & 11-11/1,PLOT NO.6','P& T COLONY,GADDANNARAM','','','2',1,'F','T','NX-13-1126','M','2014-01-01',75,'2014-02-03',0,'2014-01-01',0,0,0,0,0,0,'F',15,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1615,'618022691','10','1041','VANASTHALIPURAM (DIV 10)','8500','2014-01-25','PUCHAKAYALA MADHAVI LATHA','PLOT NO.193','FCI COLONY','','','1',0.75,'F','T','13-K-4338','M','2013-12-01',50,'2014-01-25',0,'2013-12-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1616,'618022714','10','1041','VANASTHALIPURAM (DIV 10)','8500','2014-02-20','GHANTA  SARADA','PLOT NO . 466','PRASHANTHNAGAR','','','1',0.5,'F','T','13K.59681','M','2014-01-01',15,'2014-02-20',0,'2014-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1617,'618022754','10','1041','VANASTHALIPURAM (DIV 10)','8500','2014-02-22','SAMA SRILATHA REDDY','PLOT NO.49, ROAD NO-8,','SRI VENKATARAMANA COLONY, N.S.','','','1',0.5,'F','T','13K58606','M','2014-01-01',15,'2014-02-22',0,'2014-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1618,'618022784','10','0261','L.B.NAGAR','8500','2013-11-25','M.ANITHA','SYNO 28&29','VIVEKANANDA NAGAR','','','1',0.5,'F','T','13A38651','M','2013-10-01',15,'2013-11-25',0,'2013-10-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1619,'618023381','15','0614','MADHAPUR','8500','2014-02-22','B.SUKKAIAH','2-41/11/7/77','KOTHAGUDA','','','1',0.75,'F','T','2013B2007461','M','2014-01-01',50,'2014-02-22',0,'2014-01-01',0,0,0,0,0,0,'F',2,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1620,'618023499','15','0614','MADHAPUR','8500','2014-02-22','MOHD.GAFFAR','1-3/10','MAJEED BOND, KONDAPUR','','','1',0.5,'F','T','13A22340','M','2014-01-01',15,'2014-02-22',0,'2014-01-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1621,'618023584','03','0332','KAKATIYA NAGAR','8500','2014-02-23','A.SUBRAHMANYAM','12-2-725/4/A','P & T COLONY,RETHIBOWLI,GUDIMA','','','1',0.5,'F','T','13K54565','M','2014-01-01',15,'2014-02-23',0,'2014-01-01',0,0,0,0,0,0,'F',3,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1624,'618023919','03','0321','HUMAYUN NAGAR','8500','2014-02-02','VENKATA LAKSHMI CONSTRUCTIONS','10-5-16','NEAR POLICE OFFICERS MESS, MAS','','','2',0.75,'F','T','13K4300','M','2014-01-01',50,'2014-02-02',0,'2014-01-01',0,0,0,0,0,0,'F',12,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',2),
 (1625,'618023972','07','0724','SEETHAPALMANDI','8500','2014-02-10','SRI.K.SATYANARAYANA CHARY','HNO.12-10-587/93','POCHAMMA TEMPLE,MEDIBAVI','','','1',0.5,'F','T','MJ.138781','M','2014-01-01',15,'2014-02-10',0,'2014-01-01',0,0,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1627,'612756456','07','0724','SEETHAPALMANDI','8927','2003-10-27','G.MUTHYALAMMA','11-2-472/15/A','NAMALAGUNDU','','500017','2',0.75,'T','T','','R','2014-02-01',90,'0001-01-01',0,'0001-01-01',0,2450.43,0,0,0,0,'F',7,0,0,'2014-02-06',1234,'0000000000','0','0','0','0','0','0','2013-01-01',2);
INSERT INTO `cust_details` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category_unused`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`,`meter_fix_date`,`tariff_category_master_id`) VALUES 
 (1628,'615713082','14','1422','UPPAL','8927','2008-11-20','Y.YESURATNAM','PLOT NO 6','Raj Nagar','','','1',0.75,'F','T','08-1-1518','R','2014-03-01',50,'0001-01-01',0,'0001-01-01',0,4196.46,0,0,0,0,'F',0,0,0,'2014-02-17',2120,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1629,'617983202','13','1303','YAPRAL (Div13)','8927','2013-12-22','B NORMAN','5-8-30/22','GOVARDHANPURI COLONY YAPRAL','','','1',0.5,'F','T','SA 133233','M','2014-05-01',59,'2014-01-10',7000,'2013-12-01',59,20322.1,0,0,0,0,'F',1,0,0,'2014-02-03',700,'0000000000','0','0','0','0','0','0','2013-01-01',1),
 (1630,'618004780','01','0111','BAHADURPURA','8927','2013-12-28','MOHAMMED. AZAM','19-4-439/9','B N K ,COLONY, TADBUN','','','1',0.5,'F','T','SLUM','M','2014-03-01',25,'2013-12-28',0,'2013-11-01',25,4454,0,0,0,0,'F',0,0,0,'0001-01-01',0,'0000000000','0','0','0','0','0','0','2013-01-01',1);
/*!40000 ALTER TABLE `cust_details` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`cust_meter_mapping`
--

DROP TABLE IF EXISTS `cust_meter_mapping`;
CREATE TABLE `cust_meter_mapping` (
  `id` bigint(20) NOT NULL auto_increment,
  `from_date` date NOT NULL,
  `to_date` date default NULL,
  `cust_details_id` bigint(20) default NULL,
  `meter_details_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_custmetermapping_custdetails_id` (`cust_details_id`),
  KEY `fk_custmetermapping_meterdetails_id` (`meter_details_id`),
  CONSTRAINT `fk_custmetermapping_custdetails_id` FOREIGN KEY (`cust_details_id`) REFERENCES `cust_details` (`id`),
  CONSTRAINT `fk_custmetermapping_meterdetails_id` FOREIGN KEY (`meter_details_id`) REFERENCES `meter_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`cust_meter_mapping`
--

/*!40000 ALTER TABLE `cust_meter_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `cust_meter_mapping` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL auto_increment,
  `request_date` timestamp NULL default NULL,
  `first_name` varchar(255) default NULL,
  `middle_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `house_no` varchar(255) default NULL,
  `govt_official_no` varchar(255) default NULL,
  `ward` varchar(255) default NULL,
  `street` varchar(255) default NULL,
  `pincode` varchar(255) default NULL,
  `block` varchar(255) default NULL,
  `area` varchar(255) default NULL,
  `section` varchar(255) default NULL,
  `constituency` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `tel_office` varchar(255) default NULL,
  `tel_home` varchar(255) default NULL,
  `mobile` varchar(255) default NULL,
  `file_number` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_customer_filenumber_id` (`file_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`customer_complaints`
--

DROP TABLE IF EXISTS `customer_complaints`;
CREATE TABLE `customer_complaints` (
  `id` bigint(20) NOT NULL auto_increment,
  `remarks` varchar(255) default NULL,
  `relevant_doc` varchar(255) default NULL,
  `complaint_by` varchar(255) default NULL,
  `complaint_date` date default NULL,
  `application_txn_id` bigint(20) default NULL,
  `complaint_type_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_customercomplaints_applicationtxn_id` (`application_txn_id`),
  KEY `fk_customercomplaints_complainttypemaster_id` (`complaint_type_master_id`),
  CONSTRAINT `fk_customercomplaints_complainttypemaster_id` FOREIGN KEY (`complaint_type_master_id`) REFERENCES `complaint_type_master` (`id`),
  CONSTRAINT `fk_customercomplaints_applicationtxn_id` FOREIGN KEY (`application_txn_id`) REFERENCES `application_txn` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`customer_complaints`
--

/*!40000 ALTER TABLE `customer_complaints` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_complaints` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`cx`
--

DROP TABLE IF EXISTS `cx`;
CREATE TABLE `cx` (
  `id` bigint(20) NOT NULL default '0',
  `can` varchar(255) NOT NULL,
  `div_code` varchar(255) default NULL,
  `sec_code` varchar(255) default NULL,
  `sec_name` varchar(255) default NULL,
  `met_reader_code` varchar(255) default NULL,
  `conn_date` date default NULL,
  `cons_name` varchar(255) NOT NULL,
  `house_no` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `pin_code` varchar(255) default NULL,
  `category` varchar(255) default NULL,
  `pipe_size` float default NULL,
  `board_meter` varchar(255) default NULL,
  `sewerage` varchar(255) default NULL,
  `meter_no` varchar(255) default NULL,
  `prev_bill_type` varchar(255) default NULL,
  `prev_bill_month` date default NULL,
  `prev_avg_kl` float default NULL,
  `met_reading_dt` date default NULL,
  `prev_reading` float default NULL,
  `met_reading_mo` date default NULL,
  `met_avg_kl` float default NULL,
  `arrears` float default NULL,
  `reversal_amt` float default NULL,
  `installment` float default NULL,
  `other_charges` float default NULL,
  `surcharge` float default NULL,
  `hrs_surcharge` varchar(255) default NULL,
  `res_units` bigint(20) default NULL,
  `met_cost_installment` float default NULL,
  `int_on_arrears` float default NULL,
  `last_pymt_dt` date default NULL,
  `last_pymt_amt` float default NULL,
  `mobile_no` varchar(255) default NULL,
  `cc_flag` varchar(255) default NULL,
  `cp_flag` varchar(255) default NULL,
  `notice_flag` varchar(255) default NULL,
  `dr_flag` varchar(255) default NULL,
  `lat` varchar(255) default NULL,
  `longi` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`cx`
--

/*!40000 ALTER TABLE `cx` DISABLE KEYS */;
INSERT INTO `cx` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`) VALUES 
 (1,'613427474','15','0614','MADHAPUR','0000','2005-04-19','R.PRATIBHA ANNAPURNA','5-109/10/22','RADHE NAGAR COLONY,GACHIBOWLI','','500032','D',0.5,'F','T','05505137','U','2013-10-01',10,'2016-03-13',0,NULL,10,680.06,0,0,0,0,'F',0,0,5.06,'2013-11-30',2000,'0000000000','1','1','0','1','0','0'),
 (2,'613472557','15','0614','MADHAPUR','0000','2005-05-25','N.MANJULATHA','PLOT NO.21','RADHE NAGAR COLONY,H.S.DARGA','','500032','D',0.5,'F','T','05-1-005551','R','2013-10-01',10,'2016-03-13',0,NULL,10,2785.07,0,0,0,0,'F',0,0,9.57,'2013-11-30',200,'0000000000','0','0','0','1','0','0'),
 (3,'613472562','15','0614','MADHAPUR','0000','2005-05-25','G.MURALI MOHAN','H.NO.33','RADHE NAGAR COLONY,H.S.DARGA.','','500032','D',0.5,'F','T','05-1-004920','R','2013-10-01',15,'2016-03-13',0,NULL,0,6924.29,0,0,0,0,'F',0,0,61.94,'2013-11-30',250,'0000000000','0','0','0','1','0','0');
INSERT INTO `cx` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`) VALUES 
 (4,'613577519','15','0614','MADHAPUR','0000','2005-09-21','K.V.V.BALA SUBRAMANA','PLOT NO.19 SY.47','RADHA NAGAR RAIDURGA,MADHAPUR','','500032','D',0.5,'F','T','05-1-0017909','R','2013-10-01',15,'2016-03-13',0,NULL,6,31417.3,0,0,0,0,'F',0,0,329.73,'2013-11-30',247,'0000000000','0','0','0','1','0','0'),
 (5,'617738493','15','0614','MADHAPUR','0000','2012-08-11','VANIN','3-615/3','PLOT NO. 195','','','D',0.5,'F','T','12B40628','R','2013-10-01',15,'2016-03-13',0,NULL,15,2508.88,0,0,0,0,'F',1,0,6.38,'2013-11-30',260,'0000000000','0','0','0','1','0','0'),
 (6,'617738918','15','0614','MADHAPUR','0000','2012-07-14','K RAVI','1-60/30/138/135','ANJAIAH NAGAR,GACHIBOWLI','','','D',0.5,'F','T','12A19467','L','2013-10-01',15,'2016-03-13',0,'2012-06-01',0,3032.75,3400,0,0,0,'F',1,0,12.75,'2013-11-30',380,'0000000000','0','0','0','1','0','0');
INSERT INTO `cx` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`) VALUES 
 (7,'617757078','15','0614','MADHAPUR','0000','2012-09-10','MALOTH.LACHIRAM NAYAK','1-57/31','RAJEEV NAGAR,GACHIBOWLI','','','D',0.5,'F','T','12B92564','M','2013-10-01',15,'2016-03-13',10000,'2013-10-01',0,2481.38,0,0,0,0,'F',1,0,6.38,'2013-11-30',500,'0000000000','0','0','0','1','0','0'),
 (8,'617757083','15','0614','MADHAPUR','0000','2012-09-15','P HIMA BINDU','1-58/103','RAJEEV NAGAR,GACHIBOWLI','','','D',0.5,'F','T','11B35430','M','2013-10-01',15,'2016-03-13',100000,'2013-10-01',0,2581.38,0,0,0,0,'F',1,0,6.38,'2013-11-30',400,'0000000000','0','0','0','1','0','0'),
 (9,'617757111','15','0614','MADHAPUR','0000','2012-08-20','JAFFAR BEE','H.NO.2-63/2/A3','CHINNA ANJAIAH NAGAR,GACHIBOWL','','','D',0.5,'F','T','12B40792','L','2013-10-01',15,'2016-03-13',0,'2012-07-01',0,2995.56,3187.5,0,0,0,'F',1,0,8.06,'2013-11-30',100,'0000000000','0','0','0','1','0','0');
INSERT INTO `cx` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`) VALUES 
 (10,'617757186','15','0614','MADHAPUR','0000','2012-09-26','SMT.SHIVALINGAMMA','2-62/2/A/10','GACHIBOWLI VILLAGE','','','D',0.5,'F','T','12B36048','L','2013-10-01',15,'2016-03-13',0,'2012-08-01',0,2746.38,2975,0,0,0,'F',1,0,6.38,'2013-11-30',235,'0000000000','0','0','0','1','0','0'),
 (11,'617771922','15','0614','MADHAPUR','0000','2012-11-01','SYED AZEEM','1-14','OLD GACHIBOWLI','','','D',0.5,'F','T','','L','2013-10-01',15,'2016-03-13',0,NULL,0,2100,2550,0,0,0,'F',1,0,0,'2013-11-30',450,'0000000000','0','0','0','1','0','0'),
 (12,'617781451','15','0614','MADHAPUR','0000','2012-11-15','SRINIVAS','1-110/A/32','KONDAPUR W/S COLONY,KONDAPUR','','','D',0.5,'F','T','12B53322','M','2013-10-01',15,'2016-03-13',400000,'2013-10-01',0,1750,0,0,0,0,'F',1,0,0,'2013-11-30',800,'0000000000','0','0','0','1','0','0');
INSERT INTO `cx` (`id`,`can`,`div_code`,`sec_code`,`sec_name`,`met_reader_code`,`conn_date`,`cons_name`,`house_no`,`address`,`city`,`pin_code`,`category`,`pipe_size`,`board_meter`,`sewerage`,`meter_no`,`prev_bill_type`,`prev_bill_month`,`prev_avg_kl`,`met_reading_dt`,`prev_reading`,`met_reading_mo`,`met_avg_kl`,`arrears`,`reversal_amt`,`installment`,`other_charges`,`surcharge`,`hrs_surcharge`,`res_units`,`met_cost_installment`,`int_on_arrears`,`last_pymt_dt`,`last_pymt_amt`,`mobile_no`,`cc_flag`,`cp_flag`,`notice_flag`,`dr_flag`,`lat`,`longi`) VALUES 
 (13,'617781710','15','0614','MADHAPUR','0000','2012-11-10','K.DEVIDAS','3-618/2,P.NO.540/B','SCB NAGAR,NEW HAFEEZPET','','','D',0.5,'F','T','12B53305','M','2013-10-01',15,'2016-03-13',500000,'2013-10-01',0,2338,0,0,0,0,'F',2,0,0,'2013-11-30',212,'0000000000','0','0','0','1','0','0');
/*!40000 ALTER TABLE `cx` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`databasechangelog`
--

DROP TABLE IF EXISTS `databasechangelog`;
CREATE TABLE `databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `COMMENTS` varchar(255) default NULL,
  `TAG` varchar(255) default NULL,
  `LIQUIBASE` varchar(20) default NULL,
  `CONTEXTS` varchar(255) default NULL,
  `LABELS` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`databasechangelog`
--

/*!40000 ALTER TABLE `databasechangelog` DISABLE KEYS */;
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('00000000000001','jhipster','classpath:config/liquibase/changelog/00000000000000_initial_schema.xml','2016-02-24 18:37:40',1,'EXECUTED','7:e5d421759980df5ea9b5cd2ebcfd994c','createTable, createIndex (x2), createTable (x2), addPrimaryKey, createTable, addForeignKeyConstraint (x3), loadData, dropDefaultValue, loadData (x2), createTable (x2), addPrimaryKey, createIndex (x2), addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160224131058','jhipster','classpath:config/liquibase/changelog/20160224131058_added_entity_SewerSize.xml','2016-02-26 10:35:06',2,'EXECUTED','7:be40d7c60d89c57e1672aaaed4915727','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160229064640','jhipster','classpath:config/liquibase/changelog/20160229064640_added_entity_ApplicationTypeMaster.xml','2016-02-29 12:31:59',3,'EXECUTED','7:c1c9f7b3be47bd9dca371ebec3968605','createTable, dropDefaultValue (x2)','',NULL,'3.4.2',NULL,NULL),
 ('20160229065150','jhipster','classpath:config/liquibase/changelog/20160229065150_added_entity_ConnectionTypeMaster.xml','2016-02-29 12:31:59',4,'EXECUTED','7:1d2213aedb239d233daaff9d017fe21f','createTable','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160229065305','jhipster','classpath:config/liquibase/changelog/20160229065305_added_entity_CategoryMaster.xml','2016-02-29 12:32:00',5,'EXECUTED','7:bdbad9897632fcb3b27b84614eb65631','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160229065514','jhipster','classpath:config/liquibase/changelog/20160229065514_added_entity_PipeSizeMaster.xml','2016-02-29 12:32:00',6,'EXECUTED','7:5530b835ccc14b682cdd22ef99c3cd80','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160229065700','jhipster','classpath:config/liquibase/changelog/20160229065700_added_entity_CategoryPipeSizeMapping.xml','2016-02-29 12:32:01',7,'EXECUTED','7:10b74427e2abf13a1e46b02177b879c5','createTable, addForeignKeyConstraint (x2)','',NULL,'3.4.2',NULL,NULL),
 ('20160229070517','jhipster','classpath:config/liquibase/changelog/20160229070517_added_entity_FileNumber.xml','2016-02-29 14:06:34',8,'EXECUTED','7:d3e42819856cbf28b67058bba741014f','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160229070707','jhipster','classpath:config/liquibase/changelog/20160229070707_added_entity_TransactionTypeMaster.xml','2016-02-29 14:06:34',9,'EXECUTED','7:afd37db16070bbc1db18016656893a32','createTable','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160229070800','jhipster','classpath:config/liquibase/changelog/20160229070800_added_entity_CashBookMaster.xml','2016-02-29 14:06:34',10,'EXECUTED','7:d0decf027ebc34ee609eba6744ef51c2','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160229070919','jhipster','classpath:config/liquibase/changelog/20160229070919_added_entity_PaymentTypes.xml','2016-02-29 14:06:34',11,'EXECUTED','7:ef4e1a7913b69b2869492e1ec5644d0d','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160229071846','jhipster','classpath:config/liquibase/changelog/20160229071846_added_entity_Customer.xml','2016-02-29 14:06:35',12,'EXECUTED','7:a21f5fbe73cee6f0762e2f39af77124a','createTable, dropDefaultValue, addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160229072353','jhipster','classpath:config/liquibase/changelog/20160229072353_added_entity_ManageCashPoint.xml','2016-02-29 14:06:39',13,'EXECUTED','7:063f36a456a8a13982a11343a8a8dddd','createTable, dropDefaultValue, addForeignKeyConstraint (x5)','',NULL,'3.4.2',NULL,NULL),
 ('20160229073210','jhipster','classpath:config/liquibase/changelog/20160229073210_added_entity_StatusMaster.xml','2016-02-29 14:06:40',14,'EXECUTED','7:37a09476506400cb3134316685ddbca6','createTable','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160229073547','jhipster','classpath:config/liquibase/changelog/20160229073547_added_entity_DesignationMaster.xml','2016-02-29 14:06:41',15,'EXECUTED','7:127eba27413f9aa0a5e653084544e03a','createTable, dropDefaultValue (x2), addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160229073648','jhipster','classpath:config/liquibase/changelog/20160229073648_added_entity_FeasibilityStatus.xml','2016-02-29 14:06:41',16,'EXECUTED','7:190180bbcfa1c279424b098aae93a57c','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160229074219','jhipster','classpath:config/liquibase/changelog/20160229074219_added_entity_ReAllotment.xml','2016-02-29 14:06:46',18,'EXECUTED','7:eb523405877dcf8d7dd83dc9199b8ea3','createTable, addForeignKeyConstraint (x3)','',NULL,'3.4.2',NULL,NULL),
 ('20160229084044','jhipster','classpath:config/liquibase/changelog/20160229084044_added_entity_ConfigurationDetails.xml','2016-02-29 15:03:13',20,'EXECUTED','7:839bd04dd36ec11b9c3f6f6db979cc63','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160229085139','jhipster','classpath:config/liquibase/changelog/20160229085139_added_entity_DesigCategoryMaster.xml','2016-02-29 15:03:14',21,'EXECUTED','7:fdd173d8f6e7a9bc336c5a494f57f052','createTable, dropDefaultValue (x2), addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160229085352','jhipster','classpath:config/liquibase/changelog/20160229085352_added_entity_SubDesigCategoryMaster.xml','2016-02-29 15:03:15',22,'EXECUTED','7:c1f7021bd38767b73129e94983eb54cf','createTable, dropDefaultValue (x2), addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160229085805','jhipster','classpath:config/liquibase/changelog/20160229085805_added_entity_GroupMaster.xml','2016-02-29 15:03:16',23,'EXECUTED','7:4c67fc449b40cce038c464ecc57d55d0','createTable, dropDefaultValue (x2), addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160229090028','jhipster','classpath:config/liquibase/changelog/20160229090028_added_entity_OrgHierarchy.xml','2016-02-29 15:03:17',24,'EXECUTED','7:fd82c8c6649f4fc468f75eda51211b68','createTable, dropDefaultValue (x2), addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160229090217','jhipster','classpath:config/liquibase/changelog/20160229090217_added_entity_DesignationMappings.xml','2016-02-29 15:03:20',25,'EXECUTED','7:a32248161fb67e22dcb376886d1f8d32','createTable, addForeignKeyConstraint (x4)','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160229090442','jhipster','classpath:config/liquibase/changelog/20160229090442_added_entity_DepartmentsHierarchy.xml','2016-02-29 15:03:21',26,'EXECUTED','7:f61491f7db54a4caa099623241809053','createTable, dropDefaultValue (x2), addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160229090611','jhipster','classpath:config/liquibase/changelog/20160229090611_added_entity_DepartmentTypeMaster.xml','2016-02-29 15:03:23',27,'EXECUTED','7:877befbbede5aa2ae023cef1c740eda5','createTable, dropDefaultValue (x2), addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160229091226','jhipster','classpath:config/liquibase/changelog/20160229091226_added_entity_DepartmentsMaster.xml','2016-02-29 15:03:25',28,'EXECUTED','7:269c35f7c51323070df2bb00cb146173','createTable, dropDefaultValue (x2), addForeignKeyConstraint (x3)','',NULL,'3.4.2',NULL,NULL),
 ('20160229091411','jhipster','classpath:config/liquibase/changelog/20160229091411_added_entity_OrgRoleHierarchy.xml','2016-02-29 15:03:26',29,'EXECUTED','7:2917d963a991b8d25ed698800fb6d36c','createTable, dropDefaultValue (x2), addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160229092048','jhipster','classpath:config/liquibase/changelog/20160229092048_added_entity_OrgRoleInstance.xml','2016-02-29 15:03:29',30,'EXECUTED','7:775abb35fbdc8d21cefae3e86deeb7e2','createTable, dropDefaultValue (x3), addForeignKeyConstraint (x3)','',NULL,'3.4.2',NULL,NULL),
 ('20160229092244','jhipster','classpath:config/liquibase/changelog/20160229092244_added_entity_OrgRolesMaster.xml','2016-02-29 15:03:30',31,'EXECUTED','7:88f6b41a493861a105157b995199f4a1','createTable, dropDefaultValue (x2), addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160229092636','jhipster','classpath:config/liquibase/changelog/20160229092636_added_entity_WorkflowTypeMaster.xml','2016-02-29 15:03:31',32,'EXECUTED','7:c51656b7eeb13d3c2e615135ac3b1361','createTable, dropDefaultValue (x2), addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160229093926','jhipster','classpath:config/liquibase/changelog/20160229093926_added_entity_EmpMaster.xml','2016-02-29 15:12:23',33,'EXECUTED','7:3252e1c25b98fa713f2887568665564d','createTable, addForeignKeyConstraint (x5)','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160229095205','jhipster','classpath:config/liquibase/changelog/20160229095205_added_entity_EmpRoleMapping.xml','2016-02-29 15:49:21',34,'EXECUTED','7:fc3da7a2667930eac07790ad970de8c1','createTable, dropDefaultValue (x2), addForeignKeyConstraint (x4)','',NULL,'3.4.2',NULL,NULL),
 ('20160229095400','jhipster','classpath:config/liquibase/changelog/20160229095400_added_entity_WorkflowMaster.xml','2016-02-29 15:49:22',35,'EXECUTED','7:9e74b57e21636b130a51342ef513fa9b','createTable, dropDefaultValue (x2), addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160229095700','jhipster','classpath:config/liquibase/changelog/20160229095700_added_entity_RequestMaster.xml','2016-02-29 15:49:23',36,'EXECUTED','7:4ea16d61dc9c1631995ebcaa24172261','createTable, dropDefaultValue (x2), addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160229095841','jhipster','classpath:config/liquibase/changelog/20160229095841_added_entity_WorkflowStageMaster.xml','2016-02-29 15:49:24',37,'EXECUTED','7:b232f3ff1a94a47509fc8dcf9d99f1d4','createTable, dropDefaultValue (x2), addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160229095927','jhipster','classpath:config/liquibase/changelog/20160229095927_added_entity_WorkflowRelations.xml','2016-02-29 15:49:25',38,'EXECUTED','7:8f71bbc6064b9fe8aa41799e214bbc10','createTable, addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160229100042','jhipster','classpath:config/liquibase/changelog/20160229100042_added_entity_WorkflowRelationships.xml','2016-02-29 15:49:26',39,'EXECUTED','7:af9db222b3e3f53e4df472506e8d6995','createTable, addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160229100254','jhipster','classpath:config/liquibase/changelog/20160229100254_added_entity_ReqDesigWorkflowMapping.xml','2016-02-29 15:49:29',40,'EXECUTED','7:1e7a0c353f3ba594bbb665b568452d48','createTable, dropDefaultValue (x2), addForeignKeyConstraint (x4)','',NULL,'3.4.2',NULL,NULL),
 ('20160229100431','jhipster','classpath:config/liquibase/changelog/20160229100431_added_entity_ReqOrgWorkflowMapping.xml','2016-02-29 15:49:32',41,'EXECUTED','7:f3cade643b99f3ca2eaf4c44cf764f9c','createTable, dropDefaultValue (x2), addForeignKeyConstraint (x4)','',NULL,'3.4.2',NULL,NULL),
 ('20160229100821','jhipster','classpath:config/liquibase/changelog/20160229100821_added_entity_RoleWorkflowMapping.xml','2016-02-29 15:49:35',42,'EXECUTED','7:25c22c3ba0d09c89818f178cb23b9aea','createTable, dropDefaultValue (x2), addForeignKeyConstraint (x4)','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160229100952','jhipster','classpath:config/liquibase/changelog/20160229100952_added_entity_RequestWorkflowMapping.xml','2016-02-29 15:49:37',43,'EXECUTED','7:e2e3affdf6fd6213512081f5a7c52acd','createTable, dropDefaultValue (x2), addForeignKeyConstraint (x3)','',NULL,'3.4.2',NULL,NULL),
 ('20160229101231','jhipster','classpath:config/liquibase/changelog/20160229101231_added_entity_WorkflowTxnDetails.xml','2016-02-29 15:49:38',44,'EXECUTED','7:ffd53ef669a1b6a5fdacfdfc2c63c8d4','createTable, addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160229111312','jhipster','classpath:config/liquibase/changelog/20160229111312_added_entity_Workflow.xml','2016-02-29 16:56:15',45,'EXECUTED','7:aa3bbe903f8a96b777e321dc647773ab','createTable, addForeignKeyConstraint (x10)','',NULL,'3.4.2',NULL,NULL),
 ('20160309103544','jhipster','classpath:config/liquibase/changelog/20160309103544_added_entity_Module.xml','2016-03-09 16:14:40',48,'EXECUTED','7:ae553e293db4d292b225cd36fb0ba43c','createTable, dropDefaultValue','',NULL,'3.4.2',NULL,NULL),
 ('20160309103701','jhipster','classpath:config/liquibase/changelog/20160309103701_added_entity_MenuItem.xml','2016-03-09 16:14:41',49,'EXECUTED','7:bd9888add9c5af34bcdca93e50add4d1','createTable, dropDefaultValue','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160309103829','jhipster','classpath:config/liquibase/changelog/20160309103829_added_entity_Url.xml','2016-03-09 16:14:41',50,'EXECUTED','7:1889bdedffb7df6fe11f9bc33d0efa35','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160309104001','jhipster','classpath:config/liquibase/changelog/20160309104001_added_entity_MenuItem2Url.xml','2016-03-09 16:14:43',51,'EXECUTED','7:902843a076e3bb258db90badb9e1dc9a','createTable, addForeignKeyConstraint (x2)','',NULL,'3.4.2',NULL,NULL),
 ('20160309104200','jhipster','classpath:config/liquibase/changelog/20160309104200_added_entity_Module2MenuItem.xml','2016-03-09 16:14:45',52,'EXECUTED','7:9824330082db5729d7b5d6bf940348df','createTable, addForeignKeyConstraint (x2)','',NULL,'3.4.2',NULL,NULL),
 ('20160309105304','jhipster','classpath:config/liquibase/changelog/20160309105304_added_entity_Url2Role.xml','2016-03-09 16:34:47',53,'EXECUTED','7:10331a2dfcdaf6902d65c17510f31bc4','createTable, addForeignKeyConstraint (x2)','',NULL,'3.4.2',NULL,NULL),
 ('20160311094234','jhipster','classpath:config/liquibase/changelog/20160311094234_added_entity_SchemeMaster.xml','2016-03-11 15:21:26',54,'EXECUTED','7:af80987658cadbe9d18ef393fd5559c7','createTable','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160311094550','jhipster','classpath:config/liquibase/changelog/20160311094550_added_entity_MakeOfPipe.xml','2016-03-11 15:21:26',56,'EXECUTED','7:0aae809bc0a38e5aa294a887f735acb8','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160311094820','jhipster','classpath:config/liquibase/changelog/20160311094820_added_entity_MainWaterSize.xml','2016-03-11 15:21:26',57,'EXECUTED','7:0e853a5e0c7721503d0203d88333bd91','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160311094904','jhipster','classpath:config/liquibase/changelog/20160311094904_added_entity_MainSewerageSize.xml','2016-03-11 15:21:27',58,'EXECUTED','7:03b9b58c058199566e8d55fd5635b97d','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160311095014','jhipster','classpath:config/liquibase/changelog/20160311095014_added_entity_DocketCode.xml','2016-03-11 15:21:27',59,'EXECUTED','7:9b3b9b3180ffc95d73eadf3d1294c5e0','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160317071301','jhipster','classpath:config/liquibase/changelog/20160317071301_added_entity_ItemDetails.xml','2016-03-17 13:06:23',62,'EXECUTED','7:8d0c73c28056a5186d39bbed2ac7f38f','createTable','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160324101153','jhipster','classpath:config/liquibase/changelog/20160324101153_added_entity_DivisionMaster.xml','2016-03-24 15:50:09',65,'EXECUTED','7:49f67b19188786accf52558a610c39c8','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160324101330','jhipster','classpath:config/liquibase/changelog/20160324101330_added_entity_ZoneMaster.xml','2016-03-24 15:50:10',66,'EXECUTED','7:7855073214c1c3e194f1b4125d049f25','createTable, addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160324101502','jhipster','classpath:config/liquibase/changelog/20160324101502_added_entity_StreetMaster.xml','2016-03-24 15:50:11',67,'EXECUTED','7:7834259d37eff0b5a2feb5555c398f82','createTable, addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160328051857','jhipster','classpath:config/liquibase/changelog/20160328051857_added_entity_FileUploadMaster.xml','2016-03-28 18:56:06',72,'EXECUTED','7:9fd8cdb67e4d8cc76478621ecad2012b','createTable, addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160328131639','jhipster','classpath:config/liquibase/changelog/20160328131639_added_entity_FileUploadMaster.xml','2016-03-28 18:57:23',73,'EXECUTED','7:03be8b2eae9799aec199f76ed49d55a1','createTable','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160330052554','jhipster','classpath:config/liquibase/changelog/20160330052554_added_entity_ItemCategoryMaster.xml','2016-03-30 11:28:44',74,'EXECUTED','7:360b2d16421c3564bb94f0775648580d','createTable, dropDefaultValue (x3)','',NULL,'3.4.2',NULL,NULL),
 ('20160330052808','jhipster','classpath:config/liquibase/changelog/20160330052808_added_entity_ItemSubCategoryMaster.xml','2016-03-30 11:28:45',75,'EXECUTED','7:77c40a173637ee134f58cd079c67aead','createTable, dropDefaultValue (x2), addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160330053134','jhipster','classpath:config/liquibase/changelog/20160330053134_added_entity_ItemCodeMaster.xml','2016-03-30 11:28:47',76,'EXECUTED','7:a4e7f1b1ca5ebdb94b5d29dd9402b337','createTable, dropDefaultValue (x2), addForeignKeyConstraint (x2)','',NULL,'3.4.2',NULL,NULL),
 ('20160330053533','jhipster','classpath:config/liquibase/changelog/20160330053533_added_entity_ItemCompanyMaster.xml','2016-03-30 11:28:47',77,'EXECUTED','7:a250630d5ce589a445e309d152c4d935','createTable, dropDefaultValue (x2)','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160330054006','jhipster','classpath:config/liquibase/changelog/20160330054006_added_entity_ItemSubCodeMaster.xml','2016-03-30 11:28:48',78,'EXECUTED','7:b3fbded42d2b493c86ffbd3649e87ceb','createTable, dropDefaultValue (x2)','',NULL,'3.4.2',NULL,NULL),
 ('20160330054928','jhipster','classpath:config/liquibase/changelog/20160330054928_added_entity_MaterialMaster.xml','2016-03-30 11:28:48',79,'EXECUTED','7:983fd1500db22988ac26254293296036','createTable, dropDefaultValue (x2)','',NULL,'3.4.2',NULL,NULL),
 ('20160330055745','jhipster','classpath:config/liquibase/changelog/20160330055745_added_entity_SibEntry.xml','2016-03-30 11:28:49',80,'EXECUTED','7:da7d47c69cd368ff14809fae56104b33','createTable, dropDefaultValue (x9)','',NULL,'3.4.2',NULL,NULL),
 ('20160330093457','jhipster','classpath:config/liquibase/changelog/20160330093457_added_entity_PercentageMaster.xml','2016-03-30 19:02:55',85,'EXECUTED','7:939ffd4e62fb70f2288fd5eb2055b778','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160311094431','jhipster','classpath:config/liquibase/changelog/20160311094431_added_entity_TariffCategoryMaster.xml','2016-04-01 15:34:53',87,'EXECUTED','7:c01f3faca05eff0386e65260cc81849e','createTable','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160311094431','jhipster','classpath:config/liquibase/changelog/20160311094431_added_entity_TariffTypeMaster.xml','2016-04-01 15:34:53',88,'EXECUTED','7:2fdf8de5ece58a24c9842690d2599317','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160311094431','jhipster','classpath:config/liquibase/changelog/20160311094431_added_entity_TariffMaster.xml','2016-04-01 15:34:54',89,'EXECUTED','7:de67571b345cd24609fcbc1d6d8e12ab','createTable, dropDefaultValue (x2), addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160401094431','jhipster','classpath:config/liquibase/changelog/20160401094431_added_entity_TariffCharges.xml','2016-04-01 15:34:56',90,'EXECUTED','7:84a4098f6e6489da14e4b14c2d948a2c','createTable, addForeignKeyConstraint (x2)','',NULL,'3.4.2',NULL,NULL),
 ('20160314104149','jhipster','classpath:config/liquibase/changelog/20160314104149_added_entity_BillFullDetails.xml','2016-04-03 16:37:33',93,'EXECUTED','7:1d7e8751c1e0e86930e4f6e3c3f39010','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160405010101','jhipster','classpath:config/liquibase/changelog/20160405010101_added_entity_MeterDetails.xml','2016-04-05 09:42:29',95,'EXECUTED','7:0fd80d99e3a222669ac0fcbe98a3754e','createTable','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160405010101','jhipster','classpath:config/liquibase/changelog/20160405010101_added_entity_CustMeterMapping.xml','2016-04-05 09:42:30',96,'EXECUTED','7:daff9712c10bda0f757f367deb57dcc9','createTable, addForeignKeyConstraint (x2)','',NULL,'3.4.2',NULL,NULL),
 ('20160406042024','jhipster','classpath:config/liquibase/changelog/20160406042024_added_entity_InstrumentIssuerMaster.xml','2016-04-06 10:33:04',98,'EXECUTED','7:e6ddd2edc49130805cd0d945da5c8bff','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160314104149','jhipster','classpath:config/liquibase/changelog/20160314104149_added_entity_BillDetails.xml','2016-04-12 13:09:15',104,'EXECUTED','7:c759f81b18397b40cc05e2759e68e9e9','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160314132343','jhipster','classpath:config/liquibase/changelog/20160314132343_added_entity_CustDetails.xml','2016-04-12 13:09:16',105,'EXECUTED','7:a6212010b6b0806261cb83574604c99f','createTable, addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160409042538','jhipster','classpath:config/liquibase/changelog/20160409042538_added_entity_Uom.xml','2016-04-12 13:09:17',107,'EXECUTED','7:16829833f2d3e87199a121db96980eaf','createTable','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160412142749','jhipster','classpath:config/liquibase/changelog/20160412142749_added_entity_BillRunMaster.xml','2016-04-13 11:50:30',109,'EXECUTED','7:b34ea10d67f40bb5c95e7ad4be486e01','createTable, dropDefaultValue','',NULL,'3.4.2',NULL,NULL),
 ('20160412143549','jhipster','classpath:config/liquibase/changelog/20160412143549_added_entity_BillRunDetails.xml','2016-04-13 11:50:30',110,'EXECUTED','7:89a48463be2097d3f10a053281a0979b','createTable, dropDefaultValue (x2), addForeignKeyConstraint (x2)','',NULL,'3.4.2',NULL,NULL),
 ('20160229075018','jhipster','classpath:config/liquibase/changelog/20160229075018_added_entity_ApplicationTxn.xml','2016-04-13 12:52:55',111,'EXECUTED','7:6958119a3e7c83241e310c06bd884282','createTable, dropDefaultValue (x3), addForeignKeyConstraint (x3)','',NULL,'3.4.2',NULL,NULL),
 ('20160229111821','jhipster','classpath:config/liquibase/changelog/20160229111821_added_entity_RequestWorkflowHistory.xml','2016-04-13 12:52:57',112,'EXECUTED','7:df037b52eebabe97bca6601174750057','createTable, dropDefaultValue (x2), addForeignKeyConstraint (x7)','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160324105452','jhipster','classpath:config/liquibase/changelog/20160324105452_added_entity_FeasibilityStudy.xml','2016-04-13 12:53:00',113,'EXECUTED','7:aa06f800520a2b8bfef4654df0572d3d','createTable, dropDefaultValue (x6), addForeignKeyConstraint (x9)','',NULL,'3.4.2',NULL,NULL),
 ('20160330095504','jhipster','classpath:config/liquibase/changelog/20160330095504_added_entity_Proceedings.xml','2016-04-13 12:53:01',114,'EXECUTED','7:5a186495ca7843f3c9eafd0f1e6025b6','createTable, addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),
 ('20160401064028','jhipster','classpath:config/liquibase/changelog/20160401064028_added_entity_Receipt.xml','2016-04-13 12:53:01',115,'EXECUTED','7:68db58ac422a749fec3dc3ab31930f41','createTable, addForeignKeyConstraint (x2)','',NULL,'3.4.2',NULL,NULL),
 ('20160412112557','jhipster','classpath:config/liquibase/changelog/20160412112557_added_entity_CollectionTypeMaster.xml','2016-04-13 12:53:01',116,'EXECUTED','7:9bb21c849c62b60681b4122c4a95e67b','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160315053144','jhipster','classpath:config/liquibase/changelog/20160315053144_added_entity_CollDetails.xml','2016-04-13 12:53:02',117,'EXECUTED','7:86e8348b225c581edd72d5d4787583ad','createTable, dropDefaultValue (x2), addForeignKeyConstraint (x3)','',NULL,'3.4.2',NULL,NULL);
INSERT INTO `databasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`) VALUES 
 ('20160330092113','jhipster','classpath:config/liquibase/changelog/20160330092113_added_entity_ItemRequired.xml','2016-04-13 12:53:03',118,'EXECUTED','7:4ea9f0b6d412315e5baff9213f3fbaeb','createTable, addForeignKeyConstraint (x5)','',NULL,'3.4.2',NULL,NULL),
 ('20160329064157','jhipster','classpath:config/liquibase/changelog/20160329064157_added_entity_ComplaintTypeMaster.xml','2016-04-15 19:03:50',119,'EXECUTED','7:925d2a76e3b71e5bc7daf39c4f8ee2b5','createTable','',NULL,'3.4.2',NULL,NULL),
 ('20160329064343','jhipster','classpath:config/liquibase/changelog/20160329064343_added_entity_CustomerComplaints.xml','2016-04-15 19:03:51',120,'EXECUTED','7:4447d052e2e7f65df6e84f8092a18afb','createTable, addForeignKeyConstraint (x2)','',NULL,'3.4.2',NULL,NULL),
 ('20160415064155','jhipster','classpath:config/liquibase/changelog/20160415064155_added_entity_ExpenseDetails.xml','2016-04-15 19:03:53',121,'EXECUTED','7:5fc5d42163edf25d27484172b6a31d64','createTable, dropDefaultValue, addForeignKeyConstraint (x3)','',NULL,'3.4.2',NULL,NULL);
/*!40000 ALTER TABLE `databasechangelog` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`databasechangeloglock`
--

DROP TABLE IF EXISTS `databasechangeloglock`;
CREATE TABLE `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime default NULL,
  `LOCKEDBY` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`databasechangeloglock`
--

/*!40000 ALTER TABLE `databasechangeloglock` DISABLE KEYS */;
INSERT INTO `databasechangeloglock` (`ID`,`LOCKED`,`LOCKGRANTED`,`LOCKEDBY`) VALUES 
 (1,'\0',NULL,NULL);
/*!40000 ALTER TABLE `databasechangeloglock` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`department_type_master`
--

DROP TABLE IF EXISTS `department_type_master`;
CREATE TABLE `department_type_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `description` varchar(255) default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_departmenttypemaster_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_departmenttypemaster_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`department_type_master`
--

/*!40000 ALTER TABLE `department_type_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `department_type_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`departments_hierarchy`
--

DROP TABLE IF EXISTS `departments_hierarchy`;
CREATE TABLE `departments_hierarchy` (
  `id` bigint(20) NOT NULL auto_increment,
  `dept_hierarchy_name` varchar(255) default NULL,
  `parent_dept_hierarchy_id` int(11) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_departmentshierarchy_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_departmentshierarchy_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`departments_hierarchy`
--

/*!40000 ALTER TABLE `departments_hierarchy` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments_hierarchy` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`departments_master`
--

DROP TABLE IF EXISTS `departments_master`;
CREATE TABLE `departments_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `department_name` varchar(255) default NULL,
  `parent_deparment` int(11) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `departments_hierarchy_id` bigint(20) default NULL,
  `department_type_master_id` bigint(20) default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_departmentsmaster_departmentshierarchy_id` (`departments_hierarchy_id`),
  KEY `fk_departmentsmaster_departmenttypemaster_id` (`department_type_master_id`),
  KEY `fk_departmentsmaster_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_departmentsmaster_departmentshierarchy_id` FOREIGN KEY (`departments_hierarchy_id`) REFERENCES `departments_hierarchy` (`id`),
  CONSTRAINT `fk_departmentsmaster_departmenttypemaster_id` FOREIGN KEY (`department_type_master_id`) REFERENCES `department_type_master` (`id`),
  CONSTRAINT `fk_departmentsmaster_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`departments_master`
--

/*!40000 ALTER TABLE `departments_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`desig_category_master`
--

DROP TABLE IF EXISTS `desig_category_master`;
CREATE TABLE `desig_category_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `description` varchar(255) default NULL,
  `alias` varchar(255) default NULL,
  `order_by` int(11) default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_desigcategorymaster_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_desigcategorymaster_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`desig_category_master`
--

/*!40000 ALTER TABLE `desig_category_master` DISABLE KEYS */;
INSERT INTO `desig_category_master` (`id`,`name`,`creation_date`,`last_modified_date`,`description`,`alias`,`order_by`,`status_master_id`) VALUES 
 (1,'DRDS','2016-03-03 00:00:00','2016-03-03 00:00:00','Scientists','123',1,NULL);
/*!40000 ALTER TABLE `desig_category_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`designation_mappings`
--

DROP TABLE IF EXISTS `designation_mappings`;
CREATE TABLE `designation_mappings` (
  `id` bigint(20) NOT NULL auto_increment,
  `type` varchar(255) default NULL,
  `desig_category_master_id` bigint(20) default NULL,
  `sub_desig_category_master_id` bigint(20) default NULL,
  `designation_master_id` bigint(20) default NULL,
  `group_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_designationmappings_desigcategorymaster_id` (`desig_category_master_id`),
  KEY `fk_designationmappings_subdesigcategorymaster_id` (`sub_desig_category_master_id`),
  KEY `fk_designationmappings_designationmaster_id` (`designation_master_id`),
  KEY `fk_designationmappings_groupmaster_id` (`group_master_id`),
  CONSTRAINT `fk_designationmappings_desigcategorymaster_id` FOREIGN KEY (`desig_category_master_id`) REFERENCES `desig_category_master` (`id`),
  CONSTRAINT `fk_designationmappings_designationmaster_id` FOREIGN KEY (`designation_master_id`) REFERENCES `designation_master` (`id`),
  CONSTRAINT `fk_designationmappings_groupmaster_id` FOREIGN KEY (`group_master_id`) REFERENCES `group_master` (`id`),
  CONSTRAINT `fk_designationmappings_subdesigcategorymaster_id` FOREIGN KEY (`sub_desig_category_master_id`) REFERENCES `sub_desig_category_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`designation_mappings`
--

/*!40000 ALTER TABLE `designation_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `designation_mappings` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`designation_master`
--

DROP TABLE IF EXISTS `designation_master`;
CREATE TABLE `designation_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `description` varchar(255) default NULL,
  `order_no` int(11) default NULL,
  `service_type` varchar(255) default NULL,
  `code` varchar(255) default NULL,
  `desigalias` varchar(255) default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_designationmaster_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_designationmaster_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`designation_master`
--

/*!40000 ALTER TABLE `designation_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `designation_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`division_master`
--

DROP TABLE IF EXISTS `division_master`;
CREATE TABLE `division_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `division_name` varchar(255) default NULL,
  `division_code` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`division_master`
--

/*!40000 ALTER TABLE `division_master` DISABLE KEYS */;
INSERT INTO `division_master` (`id`,`division_name`,`division_code`) VALUES 
 (1,'D1','DCode1'),
 (2,'D2','DCode2'),
 (3,'D3','DCode3'),
 (4,'D4','DCode4'),
 (5,'D5','DCode5'),
 (6,'D6','DCode6'),
 (7,'D7','DCode7'),
 (8,'D8','DCode8'),
 (9,'D9','DCode9'),
 (10,'D10','DCode10');
/*!40000 ALTER TABLE `division_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`docket_code`
--

DROP TABLE IF EXISTS `docket_code`;
CREATE TABLE `docket_code` (
  `id` bigint(20) NOT NULL auto_increment,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`docket_code`
--

/*!40000 ALTER TABLE `docket_code` DISABLE KEYS */;
INSERT INTO `docket_code` (`id`,`code`) VALUES 
 (1,'Docket code 1'),
 (2,'Docket code 2');
/*!40000 ALTER TABLE `docket_code` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`emp_master`
--

DROP TABLE IF EXISTS `emp_master`;
CREATE TABLE `emp_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `user_id` bigint(20) default NULL,
  `office_id_id` bigint(20) default NULL,
  `designation_master_id` bigint(20) default NULL,
  `directorate_id_id` bigint(20) default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_empmaster_user_id` (`user_id`),
  KEY `fk_empmaster_officeid_id` (`office_id_id`),
  KEY `fk_empmaster_designationmaster_id` (`designation_master_id`),
  KEY `fk_empmaster_directorateid_id` (`directorate_id_id`),
  KEY `fk_empmaster_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_empmaster_designationmaster_id` FOREIGN KEY (`designation_master_id`) REFERENCES `designation_master` (`id`),
  CONSTRAINT `fk_empmaster_directorateid_id` FOREIGN KEY (`directorate_id_id`) REFERENCES `org_role_instance` (`id`),
  CONSTRAINT `fk_empmaster_officeid_id` FOREIGN KEY (`office_id_id`) REFERENCES `org_role_instance` (`id`),
  CONSTRAINT `fk_empmaster_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`),
  CONSTRAINT `fk_empmaster_user_id` FOREIGN KEY (`user_id`) REFERENCES `jhi_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`emp_master`
--

/*!40000 ALTER TABLE `emp_master` DISABLE KEYS */;
INSERT INTO `emp_master` (`id`,`user_id`,`office_id_id`,`designation_master_id`,`directorate_id_id`,`status_master_id`) VALUES 
 (1,6,1,NULL,1,2),
 (2,7,2,NULL,2,2),
 (3,8,3,NULL,3,2),
 (4,9,4,NULL,4,2),
 (5,10,5,NULL,5,2),
 (6,11,6,NULL,6,2),
 (7,12,7,NULL,7,2),
 (8,13,8,NULL,8,2),
 (9,14,9,NULL,9,2),
 (10,15,10,NULL,10,2),
 (11,16,11,NULL,11,2),
 (12,5,25,NULL,25,2),
 (13,24,19,NULL,19,2),
 (14,17,12,NULL,12,2),
 (16,18,13,NULL,13,2),
 (17,19,14,NULL,14,2),
 (18,20,15,NULL,15,2),
 (20,21,16,NULL,16,2),
 (21,22,17,NULL,17,2),
 (22,23,18,NULL,18,2),
 (23,24,19,NULL,19,2),
 (24,25,20,NULL,20,2),
 (25,26,21,NULL,21,2),
 (26,27,22,NULL,22,2),
 (27,28,23,NULL,23,2),
 (28,29,24,NULL,24,2);
/*!40000 ALTER TABLE `emp_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`emp_role_mapping`
--

DROP TABLE IF EXISTS `emp_role_mapping`;
CREATE TABLE `emp_role_mapping` (
  `id` bigint(20) NOT NULL auto_increment,
  `internal_division` varchar(255) default NULL,
  `internal_role` varchar(255) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `parent_role_id` int(11) default NULL,
  `user_id` bigint(20) default NULL,
  `parent_user_id` bigint(20) default NULL,
  `org_role_instance_id` bigint(20) default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_emprolemapping_user_id` (`user_id`),
  KEY `fk_emprolemapping_parentuser_id` (`parent_user_id`),
  KEY `fk_emprolemapping_orgroleinstance_id` (`org_role_instance_id`),
  KEY `fk_emprolemapping_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_emprolemapping_orgroleinstance_id` FOREIGN KEY (`org_role_instance_id`) REFERENCES `org_role_instance` (`id`),
  CONSTRAINT `fk_emprolemapping_parentuser_id` FOREIGN KEY (`parent_user_id`) REFERENCES `jhi_user` (`id`),
  CONSTRAINT `fk_emprolemapping_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`),
  CONSTRAINT `fk_emprolemapping_user_id` FOREIGN KEY (`user_id`) REFERENCES `jhi_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`emp_role_mapping`
--

/*!40000 ALTER TABLE `emp_role_mapping` DISABLE KEYS */;
INSERT INTO `emp_role_mapping` (`id`,`internal_division`,`internal_role`,`creation_date`,`last_modified_date`,`parent_role_id`,`user_id`,`parent_user_id`,`org_role_instance_id`,`status_master_id`) VALUES 
 (1,'','','2016-03-18 00:00:00','2016-03-18 00:00:00',0,6,NULL,1,2),
 (2,'','','2016-03-18 00:00:00','2016-03-18 00:00:00',0,7,NULL,2,2),
 (3,NULL,NULL,NULL,NULL,NULL,8,NULL,3,2),
 (4,NULL,NULL,NULL,NULL,NULL,9,NULL,4,2),
 (5,NULL,NULL,NULL,NULL,NULL,10,NULL,5,2),
 (6,NULL,NULL,NULL,NULL,NULL,11,NULL,6,2),
 (7,NULL,NULL,NULL,NULL,NULL,12,NULL,7,2),
 (8,NULL,NULL,NULL,NULL,NULL,13,NULL,8,2),
 (9,NULL,NULL,NULL,NULL,NULL,14,NULL,9,2),
 (10,NULL,NULL,NULL,NULL,NULL,15,NULL,10,2),
 (11,NULL,NULL,NULL,NULL,NULL,16,NULL,11,2),
 (12,NULL,NULL,NULL,NULL,NULL,17,NULL,12,2),
 (13,NULL,NULL,NULL,NULL,NULL,18,NULL,13,2),
 (14,NULL,NULL,NULL,NULL,NULL,19,NULL,14,2),
 (15,NULL,NULL,NULL,NULL,NULL,20,NULL,15,2),
 (16,NULL,NULL,NULL,NULL,NULL,21,NULL,16,2),
 (17,NULL,NULL,NULL,NULL,NULL,22,NULL,17,2),
 (18,NULL,NULL,NULL,NULL,NULL,23,NULL,18,2);
INSERT INTO `emp_role_mapping` (`id`,`internal_division`,`internal_role`,`creation_date`,`last_modified_date`,`parent_role_id`,`user_id`,`parent_user_id`,`org_role_instance_id`,`status_master_id`) VALUES 
 (19,NULL,NULL,NULL,NULL,NULL,24,NULL,19,2),
 (20,NULL,NULL,NULL,NULL,NULL,25,NULL,20,2),
 (22,NULL,NULL,NULL,NULL,NULL,26,NULL,21,2),
 (23,NULL,NULL,NULL,NULL,NULL,27,NULL,22,2),
 (25,NULL,NULL,NULL,NULL,NULL,28,NULL,23,2),
 (26,'',NULL,'2016-03-18 00:00:00',NULL,NULL,29,NULL,24,2),
 (27,NULL,NULL,NULL,NULL,NULL,5,NULL,25,2);
/*!40000 ALTER TABLE `emp_role_mapping` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`expense_details`
--

DROP TABLE IF EXISTS `expense_details`;
CREATE TABLE `expense_details` (
  `id` bigint(20) NOT NULL auto_increment,
  `expense_no` varchar(255) default NULL,
  `expense_amt` float default NULL,
  `expense_dt` timestamp NULL,
  `instr_no` varchar(255) default NULL,
  `instr_dt` date default NULL,
  `payment_types_id` bigint(20) default NULL,
  `instrument_issuer_master_id` bigint(20) default NULL,
  `collection_type_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_expensedetails_paymenttypes_id` (`payment_types_id`),
  KEY `fk_expensedetails_instrumentissuermaster_id` (`instrument_issuer_master_id`),
  KEY `fk_expensedetails_collectiontypemaster_id` (`collection_type_master_id`),
  CONSTRAINT `fk_expensedetails_collectiontypemaster_id` FOREIGN KEY (`collection_type_master_id`) REFERENCES `collection_type_master` (`id`),
  CONSTRAINT `fk_expensedetails_instrumentissuermaster_id` FOREIGN KEY (`instrument_issuer_master_id`) REFERENCES `instrument_issuer_master` (`id`),
  CONSTRAINT `fk_expensedetails_paymenttypes_id` FOREIGN KEY (`payment_types_id`) REFERENCES `payment_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`expense_details`
--

/*!40000 ALTER TABLE `expense_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_details` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`feasibility_status`
--

DROP TABLE IF EXISTS `feasibility_status`;
CREATE TABLE `feasibility_status` (
  `id` bigint(20) NOT NULL auto_increment,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`feasibility_status`
--

/*!40000 ALTER TABLE `feasibility_status` DISABLE KEYS */;
INSERT INTO `feasibility_status` (`id`,`status`) VALUES 
 (1,'Application Accepted');
/*!40000 ALTER TABLE `feasibility_status` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`feasibility_study`
--

DROP TABLE IF EXISTS `feasibility_study`;
CREATE TABLE `feasibility_study` (
  `id` bigint(20) NOT NULL auto_increment,
  `created_date` timestamp NULL default NULL,
  `modified_date` timestamp NULL default NULL,
  `prepared_date` timestamp NULL default NULL,
  `zonal_head_approval_date` timestamp NULL default NULL,
  `dept_head_inspected_date` timestamp NULL default NULL,
  `operation_mangrapprove_date` timestamp NULL default NULL,
  `status` int(11) default NULL,
  `division_master_id` bigint(20) default NULL,
  `zone_master_id` bigint(20) default NULL,
  `street_master_id` bigint(20) default NULL,
  `application_txn_id` bigint(20) default NULL,
  `prepared_by_id` bigint(20) default NULL,
  `approved_by_zonal_head_id` bigint(20) default NULL,
  `inspection_by_department_head_id` bigint(20) default NULL,
  `approved_by_operation_manager_id` bigint(20) default NULL,
  `category_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_feasibilitystudy_divisionmaster_id` (`division_master_id`),
  KEY `fk_feasibilitystudy_zonemaster_id` (`zone_master_id`),
  KEY `fk_feasibilitystudy_streetmaster_id` (`street_master_id`),
  KEY `fk_feasibilitystudy_applicationtxn_id` (`application_txn_id`),
  KEY `fk_feasibilitystudy_preparedby_id` (`prepared_by_id`),
  KEY `fk_feasibilitystudy_approvedbyzonalhead_id` (`approved_by_zonal_head_id`),
  KEY `fk_feasibilitystudy_inspectionbydepartmenthead_id` (`inspection_by_department_head_id`),
  KEY `fk_feasibilitystudy_approvedbyoperationmanager_id` (`approved_by_operation_manager_id`),
  KEY `fk_feasibilitystudy_categorymaster_id` (`category_master_id`),
  CONSTRAINT `fk_feasibilitystudy_categorymaster_id` FOREIGN KEY (`category_master_id`) REFERENCES `category_master` (`id`),
  CONSTRAINT `fk_feasibilitystudy_applicationtxn_id` FOREIGN KEY (`application_txn_id`) REFERENCES `application_txn` (`id`),
  CONSTRAINT `fk_feasibilitystudy_approvedbyoperationmanager_id` FOREIGN KEY (`approved_by_operation_manager_id`) REFERENCES `jhi_user` (`id`),
  CONSTRAINT `fk_feasibilitystudy_approvedbyzonalhead_id` FOREIGN KEY (`approved_by_zonal_head_id`) REFERENCES `jhi_user` (`id`),
  CONSTRAINT `fk_feasibilitystudy_divisionmaster_id` FOREIGN KEY (`division_master_id`) REFERENCES `division_master` (`id`),
  CONSTRAINT `fk_feasibilitystudy_inspectionbydepartmenthead_id` FOREIGN KEY (`inspection_by_department_head_id`) REFERENCES `jhi_user` (`id`),
  CONSTRAINT `fk_feasibilitystudy_preparedby_id` FOREIGN KEY (`prepared_by_id`) REFERENCES `jhi_user` (`id`),
  CONSTRAINT `fk_feasibilitystudy_streetmaster_id` FOREIGN KEY (`street_master_id`) REFERENCES `street_master` (`id`),
  CONSTRAINT `fk_feasibilitystudy_zonemaster_id` FOREIGN KEY (`zone_master_id`) REFERENCES `zone_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`feasibility_study`
--

/*!40000 ALTER TABLE `feasibility_study` DISABLE KEYS */;
/*!40000 ALTER TABLE `feasibility_study` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`file_number`
--

DROP TABLE IF EXISTS `file_number`;
CREATE TABLE `file_number` (
  `id` bigint(20) NOT NULL auto_increment,
  `file_no` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`file_number`
--

/*!40000 ALTER TABLE `file_number` DISABLE KEYS */;
INSERT INTO `file_number` (`id`,`file_no`) VALUES 
 (1,'F_101'),
 (2,'F_102'),
 (3,'F_103'),
 (4,'F_104'),
 (5,'F_105');
/*!40000 ALTER TABLE `file_number` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`file_upload_master`
--

DROP TABLE IF EXISTS `file_upload_master`;
CREATE TABLE `file_upload_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `photo` blob,
  `photo_content_type` varchar(50) NOT NULL,
  `text_file` longtext,
  `binary_file` blob,
  `binary_file_content_type` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`file_upload_master`
--

/*!40000 ALTER TABLE `file_upload_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_upload_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`group_master`
--

DROP TABLE IF EXISTS `group_master`;
CREATE TABLE `group_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `description` varchar(255) default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_groupmaster_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_groupmaster_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`group_master`
--

/*!40000 ALTER TABLE `group_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`instrument_issuer_master`
--

DROP TABLE IF EXISTS `instrument_issuer_master`;
CREATE TABLE `instrument_issuer_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `instrument_issuer` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`instrument_issuer_master`
--

/*!40000 ALTER TABLE `instrument_issuer_master` DISABLE KEYS */;
INSERT INTO `instrument_issuer_master` (`id`,`instrument_issuer`) VALUES 
 (1,'ISSUER1'),
 (2,'ISSUER2'),
 (3,'ISSUER3');
/*!40000 ALTER TABLE `instrument_issuer_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`item_category_master`
--

DROP TABLE IF EXISTS `item_category_master`;
CREATE TABLE `item_category_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `status` int(11) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `category_code` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`item_category_master`
--

/*!40000 ALTER TABLE `item_category_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_category_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`item_code_master`
--

DROP TABLE IF EXISTS `item_code_master`;
CREATE TABLE `item_code_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `item_code` varchar(255) default NULL,
  `item_name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `status` int(11) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `item_category_master_id` bigint(20) default NULL,
  `item_sub_category_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_itemcodemaster_itemcategorymaster_id` (`item_category_master_id`),
  KEY `fk_itemcodemaster_itemsubcategorymaster_id` (`item_sub_category_master_id`),
  CONSTRAINT `fk_itemcodemaster_itemcategorymaster_id` FOREIGN KEY (`item_category_master_id`) REFERENCES `item_category_master` (`id`),
  CONSTRAINT `fk_itemcodemaster_itemsubcategorymaster_id` FOREIGN KEY (`item_sub_category_master_id`) REFERENCES `item_sub_category_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`item_code_master`
--

/*!40000 ALTER TABLE `item_code_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_code_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`item_company_master`
--

DROP TABLE IF EXISTS `item_company_master`;
CREATE TABLE `item_company_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `status` int(11) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `company_code` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`item_company_master`
--

/*!40000 ALTER TABLE `item_company_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_company_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`item_details`
--

DROP TABLE IF EXISTS `item_details`;
CREATE TABLE `item_details` (
  `id` bigint(20) NOT NULL auto_increment,
  `item_code` varchar(255) default NULL,
  `item_name` varchar(255) default NULL,
  `item_description` varchar(255) default NULL,
  `size` varchar(255) default NULL,
  `item_quantity` int(11) default NULL,
  `unit_price` float default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`item_details`
--

/*!40000 ALTER TABLE `item_details` DISABLE KEYS */;
INSERT INTO `item_details` (`id`,`item_code`,`item_name`,`item_description`,`size`,`item_quantity`,`unit_price`) VALUES 
 (1,NULL,'Pipe','1m','1',1,10),
 (2,NULL,'Pipe 2.5','2.5m','2',1,20),
 (3,NULL,'Threading tape',NULL,'10',1,15),
 (4,NULL,'G. S. Pipe',NULL,'3',1,25);
/*!40000 ALTER TABLE `item_details` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`item_required`
--

DROP TABLE IF EXISTS `item_required`;
CREATE TABLE `item_required` (
  `id` bigint(20) NOT NULL auto_increment,
  `provided` int(11) default NULL,
  `quantity` int(11) default NULL,
  `rate_per_shs` decimal(10,2) default NULL,
  `amount` decimal(10,2) default NULL,
  `material_master_id` bigint(20) default NULL,
  `application_txn_id` bigint(20) default NULL,
  `feasibility_study_id` bigint(20) default NULL,
  `proceedings_id` bigint(20) default NULL,
  `uom_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_itemrequired_materialmaster_id` (`material_master_id`),
  KEY `fk_itemrequired_applicationtxn_id` (`application_txn_id`),
  KEY `fk_itemrequired_feasibilitystudy_id` (`feasibility_study_id`),
  KEY `fk_itemrequired_proceedings_id` (`proceedings_id`),
  KEY `fk_itemrequired_uom_id` (`uom_id`),
  CONSTRAINT `fk_itemrequired_uom_id` FOREIGN KEY (`uom_id`) REFERENCES `uom` (`id`),
  CONSTRAINT `fk_itemrequired_applicationtxn_id` FOREIGN KEY (`application_txn_id`) REFERENCES `application_txn` (`id`),
  CONSTRAINT `fk_itemrequired_feasibilitystudy_id` FOREIGN KEY (`feasibility_study_id`) REFERENCES `feasibility_study` (`id`),
  CONSTRAINT `fk_itemrequired_materialmaster_id` FOREIGN KEY (`material_master_id`) REFERENCES `material_master` (`id`),
  CONSTRAINT `fk_itemrequired_proceedings_id` FOREIGN KEY (`proceedings_id`) REFERENCES `proceedings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`item_required`
--

/*!40000 ALTER TABLE `item_required` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_required` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`item_sub_category_master`
--

DROP TABLE IF EXISTS `item_sub_category_master`;
CREATE TABLE `item_sub_category_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `item_sub_category_code` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `status` int(11) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `name` varchar(255) default NULL,
  `category_code` varchar(255) default NULL,
  `item_category_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_itemsubcategorymaster_itemcategorymaster_id` (`item_category_master_id`),
  CONSTRAINT `fk_itemsubcategorymaster_itemcategorymaster_id` FOREIGN KEY (`item_category_master_id`) REFERENCES `item_category_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`item_sub_category_master`
--

/*!40000 ALTER TABLE `item_sub_category_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_sub_category_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`item_sub_code_master`
--

DROP TABLE IF EXISTS `item_sub_code_master`;
CREATE TABLE `item_sub_code_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `item_code_id` bigint(20) default NULL,
  `item_sub_code` varchar(255) default NULL,
  `item_name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `status` int(11) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `item_ccode_id` bigint(20) default NULL,
  `item_category_id` bigint(20) NOT NULL,
  `item_sub_category_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`item_sub_code_master`
--

/*!40000 ALTER TABLE `item_sub_code_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_sub_code_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`jhi_authority`
--

DROP TABLE IF EXISTS `jhi_authority`;
CREATE TABLE `jhi_authority` (
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`jhi_authority`
--

/*!40000 ALTER TABLE `jhi_authority` DISABLE KEYS */;
INSERT INTO `jhi_authority` (`name`) VALUES 
 ('ROLE_ADMIN'),
 ('ROLE_CUSTOMER'),
 ('ROLE_EMPLOYEE'),
 ('ROLE_USER');
/*!40000 ALTER TABLE `jhi_authority` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`jhi_persistent_audit_event`
--

DROP TABLE IF EXISTS `jhi_persistent_audit_event`;
CREATE TABLE `jhi_persistent_audit_event` (
  `event_id` bigint(20) NOT NULL auto_increment,
  `principal` varchar(255) NOT NULL,
  `event_date` timestamp NULL default NULL,
  `event_type` varchar(255) default NULL,
  PRIMARY KEY  (`event_id`),
  KEY `idx_persistent_audit_event` (`principal`,`event_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`jhi_persistent_audit_event`
--

/*!40000 ALTER TABLE `jhi_persistent_audit_event` DISABLE KEYS */;
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (1,'admin','2016-02-24 18:38:04','AUTHENTICATION_SUCCESS'),
 (2,'admin','2016-02-26 10:35:34','AUTHENTICATION_SUCCESS'),
 (3,'admin','2016-02-29 12:03:56','AUTHENTICATION_SUCCESS'),
 (4,'admin','2016-03-01 10:34:54','AUTHENTICATION_SUCCESS'),
 (5,'admin','2016-03-01 10:43:37','AUTHENTICATION_SUCCESS'),
 (6,'admin','2016-03-02 09:41:51','AUTHENTICATION_SUCCESS'),
 (7,'admin','2016-03-02 11:59:59','AUTHENTICATION_SUCCESS'),
 (8,'admin','2016-03-03 09:53:21','AUTHENTICATION_SUCCESS'),
 (9,'sf0220','2016-03-03 14:25:28','AUTHENTICATION_FAILURE'),
 (10,'admin','2016-03-03 14:25:34','AUTHENTICATION_SUCCESS'),
 (11,'admin','2016-03-03 18:00:35','AUTHENTICATION_SUCCESS'),
 (12,'admin','2016-03-04 10:23:26','AUTHENTICATION_SUCCESS'),
 (13,'admin','2016-03-04 12:02:35','AUTHENTICATION_SUCCESS'),
 (14,'user','2016-03-04 18:27:50','AUTHENTICATION_SUCCESS'),
 (15,'admin','2016-03-07 09:41:18','AUTHENTICATION_SUCCESS'),
 (16,'admin','2016-03-07 09:48:13','AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (17,'customer','2016-03-07 09:51:56','AUTHENTICATION_SUCCESS'),
 (18,'admin','2016-03-07 09:52:22','AUTHENTICATION_SUCCESS'),
 (19,'admin','2016-03-07 13:21:35','AUTHENTICATION_SUCCESS'),
 (20,'customer','2016-03-07 14:58:29','AUTHENTICATION_SUCCESS'),
 (21,'admin','2016-03-07 15:00:55','AUTHENTICATION_SUCCESS'),
 (22,'customer','2016-03-07 15:01:30','AUTHENTICATION_SUCCESS'),
 (23,'admin','2016-03-07 15:06:12','AUTHENTICATION_SUCCESS'),
 (24,'customer','2016-03-07 15:06:39','AUTHENTICATION_SUCCESS'),
 (25,'admin','2016-03-07 15:08:57','AUTHENTICATION_SUCCESS'),
 (26,'admin','2016-03-07 15:20:03','AUTHENTICATION_SUCCESS'),
 (27,'admin','2016-03-07 15:24:23','AUTHENTICATION_FAILURE'),
 (28,'admin','2016-03-07 15:24:29','AUTHENTICATION_FAILURE'),
 (29,'admin','2016-03-07 15:24:56','AUTHENTICATION_SUCCESS'),
 (30,'customer','2016-03-07 15:33:02','AUTHENTICATION_SUCCESS'),
 (31,'admin','2016-03-07 16:08:33','AUTHENTICATION_SUCCESS'),
 (32,'customer','2016-03-07 16:41:12','AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (33,'customer','2016-03-07 16:48:23','AUTHENTICATION_SUCCESS'),
 (34,'admin','2016-03-07 16:48:42','AUTHENTICATION_SUCCESS'),
 (35,'admin','2016-03-07 17:12:43','AUTHENTICATION_SUCCESS'),
 (36,'admin','2016-03-08 09:47:44','AUTHENTICATION_SUCCESS'),
 (37,'admin','2016-03-08 09:59:25','AUTHENTICATION_SUCCESS'),
 (38,'customer','2016-03-08 11:07:03','AUTHENTICATION_SUCCESS'),
 (39,'admin','2016-03-08 11:08:45','AUTHENTICATION_SUCCESS'),
 (40,'admin','2016-03-08 14:30:25','AUTHENTICATION_SUCCESS'),
 (41,'admin','2016-03-08 17:47:58','AUTHENTICATION_SUCCESS'),
 (42,'customer','2016-03-08 17:48:10','AUTHENTICATION_SUCCESS'),
 (43,'admin','2016-03-08 17:48:48','AUTHENTICATION_SUCCESS'),
 (44,'admin','2016-03-09 09:59:57','AUTHENTICATION_SUCCESS'),
 (45,'admin','2016-03-09 10:00:32','AUTHENTICATION_SUCCESS'),
 (46,'admin','2016-03-09 10:05:34','AUTHENTICATION_SUCCESS'),
 (47,'customer','2016-03-09 10:06:01','AUTHENTICATION_SUCCESS'),
 (48,'admin','2016-03-09 10:06:53','AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (49,'customer','2016-03-09 10:07:14','AUTHENTICATION_SUCCESS'),
 (50,'admin','2016-03-09 10:11:42','AUTHENTICATION_SUCCESS'),
 (51,'customer','2016-03-09 13:08:54','AUTHENTICATION_SUCCESS'),
 (52,'admin','2016-03-09 13:09:19','AUTHENTICATION_SUCCESS'),
 (53,'customer','2016-03-09 14:08:02','AUTHENTICATION_SUCCESS'),
 (54,'admin','2016-03-09 14:46:38','AUTHENTICATION_SUCCESS'),
 (55,'admin','2016-03-09 15:07:35','AUTHENTICATION_SUCCESS'),
 (56,'customer','2016-03-09 15:39:11','AUTHENTICATION_SUCCESS'),
 (57,'admin','2016-03-09 15:40:32','AUTHENTICATION_SUCCESS'),
 (58,'customer','2016-03-09 18:53:35','AUTHENTICATION_SUCCESS'),
 (59,'user','2016-03-09 18:53:56','AUTHENTICATION_SUCCESS'),
 (60,'admin','2016-03-09 18:54:42','AUTHENTICATION_SUCCESS'),
 (61,'admin','2016-03-10 10:03:13','AUTHENTICATION_SUCCESS'),
 (62,'admin','2016-03-10 10:22:36','AUTHENTICATION_SUCCESS'),
 (63,'admin','2016-03-10 10:33:05','AUTHENTICATION_SUCCESS'),
 (64,'customer','2016-03-10 10:33:58','AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (65,'admin','2016-03-10 10:36:26','AUTHENTICATION_SUCCESS'),
 (66,'customer','2016-03-10 10:36:41','AUTHENTICATION_SUCCESS'),
 (67,'admin','2016-03-10 10:47:17','AUTHENTICATION_SUCCESS'),
 (68,'admin','2016-03-10 10:48:02','AUTHENTICATION_SUCCESS'),
 (69,'admin','2016-03-10 11:13:18','AUTHENTICATION_SUCCESS'),
 (70,'customer','2016-03-10 11:13:31','AUTHENTICATION_SUCCESS'),
 (71,'admin','2016-03-10 11:16:55','AUTHENTICATION_SUCCESS'),
 (72,'admin','2016-03-10 11:17:02','AUTHENTICATION_SUCCESS'),
 (73,'customer','2016-03-10 11:30:43','AUTHENTICATION_SUCCESS'),
 (74,'admin','2016-03-10 11:30:56','AUTHENTICATION_SUCCESS'),
 (75,'admin','2016-03-10 12:43:31','AUTHENTICATION_SUCCESS'),
 (76,'customer','2016-03-10 14:28:13','AUTHENTICATION_SUCCESS'),
 (77,'user','2016-03-10 14:29:52','AUTHENTICATION_SUCCESS'),
 (78,'admin','2016-03-10 14:42:31','AUTHENTICATION_SUCCESS'),
 (79,'admin','2016-03-10 15:18:32','AUTHENTICATION_SUCCESS'),
 (80,'customer','2016-03-10 15:18:53','AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (81,'admin','2016-03-10 15:53:24','AUTHENTICATION_SUCCESS'),
 (82,'customer','2016-03-10 17:21:19','AUTHENTICATION_SUCCESS'),
 (83,'admin','2016-03-11 10:14:38','AUTHENTICATION_SUCCESS'),
 (84,'admin','2016-03-11 17:16:38','AUTHENTICATION_SUCCESS'),
 (85,'admin','2016-03-14 09:53:55','AUTHENTICATION_SUCCESS'),
 (86,'admin','2016-03-14 10:03:43','AUTHENTICATION_SUCCESS'),
 (87,'admin','2016-03-14 10:09:25','AUTHENTICATION_SUCCESS'),
 (88,'admin','2016-03-15 10:28:56','AUTHENTICATION_SUCCESS'),
 (89,'admin','2016-03-16 09:58:42','AUTHENTICATION_SUCCESS'),
 (90,'admin','2016-03-16 13:56:44','AUTHENTICATION_SUCCESS'),
 (91,'admin','2016-03-16 13:57:10','AUTHENTICATION_SUCCESS'),
 (92,'admin','2016-03-16 15:36:44','AUTHENTICATION_SUCCESS'),
 (93,'admin','2016-03-17 10:05:50','AUTHENTICATION_SUCCESS'),
 (94,'admin','2016-03-17 12:32:18','AUTHENTICATION_SUCCESS'),
 (95,'admin','2016-03-17 12:58:43','AUTHENTICATION_SUCCESS'),
 (96,'admin','2016-03-18 10:14:10','AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (97,'admin','2016-03-18 10:28:22','AUTHENTICATION_SUCCESS'),
 (98,'admin','2016-03-18 11:13:39','AUTHENTICATION_SUCCESS'),
 (99,'admin','2016-03-18 11:14:08','AUTHENTICATION_SUCCESS'),
 (100,'admin','2016-03-18 12:36:54','AUTHENTICATION_SUCCESS'),
 (101,'admin','2016-03-18 12:53:42','AUTHENTICATION_SUCCESS'),
 (102,'sf0006','2016-03-18 12:55:06','AUTHENTICATION_SUCCESS'),
 (103,'admin','2016-03-18 12:55:51','AUTHENTICATION_SUCCESS'),
 (104,'admin','2016-03-21 09:54:47','AUTHENTICATION_SUCCESS'),
 (105,'admin','2016-03-21 11:23:39','AUTHENTICATION_SUCCESS'),
 (106,'admin','2016-03-21 12:15:54','AUTHENTICATION_SUCCESS'),
 (107,'admin','2016-03-21 12:16:06','AUTHENTICATION_SUCCESS'),
 (108,'admin','2016-03-21 13:16:46','AUTHENTICATION_SUCCESS'),
 (109,'admin','2016-03-21 14:42:34','AUTHENTICATION_SUCCESS'),
 (110,'customer','2016-03-21 14:42:55','AUTHENTICATION_SUCCESS'),
 (111,'admin','2016-03-21 16:20:14','AUTHENTICATION_SUCCESS'),
 (112,'customer','2016-03-21 16:21:14','AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (113,'admin','2016-03-21 16:48:01','AUTHENTICATION_SUCCESS'),
 (114,'customer','2016-03-21 17:12:21','AUTHENTICATION_SUCCESS'),
 (115,'customer','2016-03-21 17:31:11','AUTHENTICATION_SUCCESS'),
 (116,'sf0015','2016-03-21 18:44:17','AUTHENTICATION_SUCCESS'),
 (117,'admin','2016-03-21 18:45:09','AUTHENTICATION_SUCCESS'),
 (118,'sf0015','2016-03-21 18:50:12','AUTHENTICATION_SUCCESS'),
 (119,'sf0015','2016-03-22 09:46:11','AUTHENTICATION_SUCCESS'),
 (120,'admin','2016-03-22 09:49:49','AUTHENTICATION_SUCCESS'),
 (121,'sf0015','2016-03-22 09:59:10','AUTHENTICATION_SUCCESS'),
 (122,'sf0015','2016-03-22 11:56:14','AUTHENTICATION_SUCCESS'),
 (123,'sf0024','2016-03-22 12:38:58','AUTHENTICATION_SUCCESS'),
 (124,'customer','2016-03-22 13:06:10','AUTHENTICATION_SUCCESS'),
 (125,'sf0015','2016-03-22 13:10:05','AUTHENTICATION_SUCCESS'),
 (126,'sf0029','2016-03-22 13:20:44','AUTHENTICATION_SUCCESS'),
 (127,'admin','2016-03-22 14:20:10','AUTHENTICATION_SUCCESS'),
 (128,'sf0020','2016-03-22 14:22:49','AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (129,'sf0015','2016-03-22 14:38:47','AUTHENTICATION_SUCCESS'),
 (130,'sf0027','2016-03-22 14:46:46','AUTHENTICATION_SUCCESS'),
 (131,'sf0014','2016-03-22 14:48:51','AUTHENTICATION_SUCCESS'),
 (132,'admin','2016-03-22 15:04:49','AUTHENTICATION_SUCCESS'),
 (133,'admin','2016-03-22 15:42:51','AUTHENTICATION_SUCCESS'),
 (134,'admin','2016-03-22 15:44:53','AUTHENTICATION_SUCCESS'),
 (135,'customer','2016-03-22 16:36:01','AUTHENTICATION_SUCCESS'),
 (136,'admin','2016-03-22 16:38:24','AUTHENTICATION_SUCCESS'),
 (137,'customer','2016-03-22 16:40:04','AUTHENTICATION_SUCCESS'),
 (138,'sf0015','2016-03-22 17:46:55','AUTHENTICATION_SUCCESS'),
 (139,'admin','2016-03-23 09:59:46','AUTHENTICATION_SUCCESS'),
 (140,'admin','2016-03-23 10:29:24','AUTHENTICATION_SUCCESS'),
 (141,'admin','2016-03-23 10:38:47','AUTHENTICATION_SUCCESS'),
 (142,'sf0015','2016-03-23 13:17:51','AUTHENTICATION_SUCCESS'),
 (143,'customer','2016-03-23 14:41:07','AUTHENTICATION_SUCCESS'),
 (144,'sf0015','2016-03-23 15:03:56','AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (145,'sf0029','2016-03-23 15:36:37','AUTHENTICATION_SUCCESS'),
 (146,'sf0020','2016-03-23 16:09:50','AUTHENTICATION_SUCCESS'),
 (147,'sf0015','2016-03-23 16:12:29','AUTHENTICATION_SUCCESS'),
 (148,'sf0027','2016-03-23 16:14:32','AUTHENTICATION_SUCCESS'),
 (149,'sf0014','2016-03-23 16:17:53','AUTHENTICATION_SUCCESS'),
 (150,'sf0015','2016-03-23 16:24:16','AUTHENTICATION_SUCCESS'),
 (151,'customer','2016-03-23 16:29:55','AUTHENTICATION_SUCCESS'),
 (152,'sf0015','2016-03-23 16:33:48','AUTHENTICATION_SUCCESS'),
 (153,'customer','2016-03-23 17:26:04','AUTHENTICATION_SUCCESS'),
 (154,'sf0015','2016-03-23 17:27:00','AUTHENTICATION_SUCCESS'),
 (155,'sf0029','2016-03-23 17:32:45','AUTHENTICATION_SUCCESS'),
 (156,'admin','2016-03-23 17:44:12','AUTHENTICATION_SUCCESS'),
 (157,'sf0029','2016-03-23 18:19:54','AUTHENTICATION_SUCCESS'),
 (158,'sf0020','2016-03-24 09:46:53','AUTHENTICATION_SUCCESS'),
 (159,'customer','2016-03-24 11:26:49','AUTHENTICATION_SUCCESS'),
 (160,'admin','2016-03-24 11:35:15','AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (161,'sf0015','2016-03-24 12:15:10','AUTHENTICATION_SUCCESS'),
 (162,'customer','2016-03-24 12:24:03','AUTHENTICATION_SUCCESS'),
 (163,'sf0015','2016-03-24 12:27:24','AUTHENTICATION_SUCCESS'),
 (164,'customer','2016-03-24 14:21:54','AUTHENTICATION_SUCCESS'),
 (165,'customer','2016-03-24 14:34:11','AUTHENTICATION_SUCCESS'),
 (166,'ssf0015','2016-03-24 14:35:37','AUTHENTICATION_FAILURE'),
 (167,'sf0015','2016-03-24 14:35:47','AUTHENTICATION_SUCCESS'),
 (168,'sf0029','2016-03-24 14:39:43','AUTHENTICATION_FAILURE'),
 (169,'sf0029','2016-03-24 14:39:51','AUTHENTICATION_SUCCESS'),
 (170,'admin','2016-03-24 15:33:32','AUTHENTICATION_SUCCESS'),
 (171,'admin','2016-03-24 16:29:29','AUTHENTICATION_SUCCESS'),
 (172,'admin','2016-03-24 16:50:38','AUTHENTICATION_SUCCESS'),
 (173,'admin','2016-03-24 16:53:51','AUTHENTICATION_SUCCESS'),
 (174,'admin','2016-03-24 17:03:17','AUTHENTICATION_SUCCESS'),
 (175,'admin','2016-03-25 09:52:32','AUTHENTICATION_SUCCESS'),
 (176,'sf0015','2016-03-25 10:27:55','AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (177,'customer','2016-03-25 15:36:43','AUTHENTICATION_SUCCESS'),
 (178,'sf0015','2016-03-25 15:37:43','AUTHENTICATION_SUCCESS'),
 (179,'customer','2016-03-25 17:16:12','AUTHENTICATION_SUCCESS'),
 (180,'sf0015','2016-03-25 17:16:47','AUTHENTICATION_SUCCESS'),
 (181,'sf0015','2016-03-25 17:49:09','AUTHENTICATION_FAILURE'),
 (182,'sf0015','2016-03-25 17:49:20','AUTHENTICATION_SUCCESS'),
 (183,'admin','2016-03-26 10:07:09','AUTHENTICATION_SUCCESS'),
 (184,'sf0015','2016-03-26 10:08:12','AUTHENTICATION_SUCCESS'),
 (185,'admin','2016-03-26 12:13:00','AUTHENTICATION_SUCCESS'),
 (186,'admin','2016-03-26 12:16:04','AUTHENTICATION_SUCCESS'),
 (187,'sf0015','2016-03-26 12:38:24','AUTHENTICATION_SUCCESS'),
 (188,'admin','2016-03-26 12:43:18','AUTHENTICATION_SUCCESS'),
 (189,'customer','2016-03-26 13:04:18','AUTHENTICATION_SUCCESS'),
 (190,'admin','2016-03-26 13:15:53','AUTHENTICATION_SUCCESS'),
 (191,'customer','2016-03-26 14:26:20','AUTHENTICATION_SUCCESS'),
 (192,'admin','2016-03-26 15:04:07','AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (193,'customer','2016-03-26 15:06:03','AUTHENTICATION_SUCCESS'),
 (194,'sf0015','2016-03-26 15:13:19','AUTHENTICATION_SUCCESS'),
 (195,'customer','2016-03-26 15:54:24','AUTHENTICATION_FAILURE'),
 (196,'customer','2016-03-26 15:54:31','AUTHENTICATION_SUCCESS'),
 (197,'sf0015','2016-03-26 15:55:50','AUTHENTICATION_SUCCESS'),
 (198,'sf0015','2016-03-28 09:57:59','AUTHENTICATION_SUCCESS'),
 (199,'sf0015','2016-03-28 10:01:48','AUTHENTICATION_SUCCESS'),
 (200,'admin','2016-03-28 12:43:06','AUTHENTICATION_SUCCESS'),
 (201,'sf0006','2016-03-28 12:44:05','AUTHENTICATION_FAILURE'),
 (202,'sf0006','2016-03-28 12:44:20','AUTHENTICATION_SUCCESS'),
 (203,'sf0009','2016-03-28 12:44:48','AUTHENTICATION_SUCCESS'),
 (204,'sf0010','2016-03-28 12:45:25','AUTHENTICATION_SUCCESS'),
 (205,'sf0011','2016-03-28 12:46:19','AUTHENTICATION_SUCCESS'),
 (206,'sf0013','2016-03-28 12:46:59','AUTHENTICATION_SUCCESS'),
 (207,'sf0014','2016-03-28 12:47:44','AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (208,'sf0015','2016-03-28 12:48:18','AUTHENTICATION_SUCCESS'),
 (209,'sf0016','2016-03-28 12:48:43','AUTHENTICATION_SUCCESS'),
 (210,'sf0017','2016-03-28 12:49:28','AUTHENTICATION_SUCCESS'),
 (211,'sf0018','2016-03-28 12:50:15','AUTHENTICATION_SUCCESS'),
 (212,'sf0019','2016-03-28 12:50:59','AUTHENTICATION_SUCCESS'),
 (213,'sf0021','2016-03-28 12:51:34','AUTHENTICATION_SUCCESS'),
 (214,'sf0022','2016-03-28 12:52:15','AUTHENTICATION_SUCCESS'),
 (215,'sf0023','2016-03-28 12:53:30','AUTHENTICATION_SUCCESS'),
 (216,'sf0027','2016-03-28 12:57:19','AUTHENTICATION_SUCCESS'),
 (217,'sf0028','2016-03-28 12:57:55','AUTHENTICATION_SUCCESS'),
 (218,'sf0015','2016-03-28 12:58:26','AUTHENTICATION_SUCCESS'),
 (219,'sf0015','2016-03-28 14:05:33','AUTHENTICATION_SUCCESS'),
 (220,'sf0029','2016-03-28 14:19:02','AUTHENTICATION_SUCCESS'),
 (221,'customer','2016-03-28 16:44:03','AUTHENTICATION_SUCCESS'),
 (222,'sf0006','2016-03-28 16:53:02','AUTHENTICATION_SUCCESS'),
 (223,'sf0029','2016-03-28 16:53:29','AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (224,'sf0015','2016-03-28 16:53:45','AUTHENTICATION_SUCCESS'),
 (225,'customer','2016-03-28 17:11:07','AUTHENTICATION_SUCCESS'),
 (226,'sf0015','2016-03-28 17:19:20','AUTHENTICATION_SUCCESS'),
 (227,'sf0015','2016-03-28 17:34:50','AUTHENTICATION_SUCCESS'),
 (228,'customer','2016-03-28 17:39:35','AUTHENTICATION_SUCCESS'),
 (229,'sf0015','2016-03-28 17:41:04','AUTHENTICATION_SUCCESS'),
 (230,'sf0015','2016-03-28 17:49:39','AUTHENTICATION_SUCCESS'),
 (231,'customer','2016-03-28 17:50:54','AUTHENTICATION_SUCCESS'),
 (232,'sf0015','2016-03-28 17:51:50','AUTHENTICATION_SUCCESS'),
 (233,'sf0029','2016-03-28 18:15:50','AUTHENTICATION_SUCCESS'),
 (234,'customer','2016-03-28 18:25:52','AUTHENTICATION_SUCCESS'),
 (235,'sf0015','2016-03-28 18:26:37','AUTHENTICATION_SUCCESS'),
 (236,'admin','2016-03-28 18:39:20','AUTHENTICATION_SUCCESS'),
 (237,'sf0029','2016-03-28 18:40:58','AUTHENTICATION_SUCCESS'),
 (238,'admin','2016-03-28 18:42:41','AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (239,'customer','2016-03-29 10:30:34','AUTHENTICATION_SUCCESS'),
 (240,'sf0015','2016-03-29 11:47:54','AUTHENTICATION_SUCCESS'),
 (241,'customer','2016-03-29 12:23:39','AUTHENTICATION_SUCCESS'),
 (242,'customer','2016-03-29 12:36:12','AUTHENTICATION_SUCCESS'),
 (243,'sf0015','2016-03-29 12:49:09','AUTHENTICATION_SUCCESS'),
 (244,'customer','2016-03-29 14:48:31','AUTHENTICATION_SUCCESS'),
 (245,'sf0015','2016-03-29 14:56:45','AUTHENTICATION_SUCCESS'),
 (246,'sf0029','2016-03-29 19:06:19','AUTHENTICATION_SUCCESS'),
 (247,'admin','2016-03-30 11:30:02','AUTHENTICATION_SUCCESS'),
 (248,'admin','2016-03-30 11:48:07','AUTHENTICATION_SUCCESS'),
 (249,'admin','2016-03-30 14:00:46','AUTHENTICATION_SUCCESS'),
 (250,'admin','2016-03-30 19:04:51','AUTHENTICATION_SUCCESS'),
 (251,'admin','2016-03-31 09:55:45','AUTHENTICATION_SUCCESS'),
 (252,'customer','2016-03-31 18:37:21','AUTHENTICATION_SUCCESS'),
 (253,'customer','2016-03-31 19:14:12','AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (254,'sf0015','2016-04-01 10:07:33','AUTHENTICATION_SUCCESS'),
 (255,'customer','2016-04-01 10:11:22','AUTHENTICATION_SUCCESS'),
 (256,'sf0016','2016-04-01 10:17:46','AUTHENTICATION_SUCCESS'),
 (257,'sf0015','2016-04-01 10:18:05','AUTHENTICATION_SUCCESS'),
 (258,'sf0029','2016-04-01 10:30:50','AUTHENTICATION_SUCCESS'),
 (259,'customer','2016-04-01 10:34:01','AUTHENTICATION_SUCCESS'),
 (260,'sf0015','2016-04-01 10:36:08','AUTHENTICATION_SUCCESS'),
 (261,'sf0016','2016-04-01 10:36:22','AUTHENTICATION_SUCCESS'),
 (262,'sf0015','2016-04-01 10:36:34','AUTHENTICATION_FAILURE'),
 (263,'sf0015','2016-04-01 10:36:39','AUTHENTICATION_SUCCESS'),
 (264,'sf0029','2016-04-01 11:32:50','AUTHENTICATION_SUCCESS'),
 (265,'admin','2016-04-01 12:13:50','AUTHENTICATION_SUCCESS'),
 (266,'admin','2016-04-01 16:43:46','AUTHENTICATION_FAILURE'),
 (267,'admin','2016-04-01 16:43:51','AUTHENTICATION_SUCCESS'),
 (268,'admin','2016-04-01 16:51:17','AUTHENTICATION_SUCCESS'),
 (269,'admin','2016-04-01 18:23:13','AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (270,'admin','2016-04-02 07:29:18','AUTHENTICATION_SUCCESS'),
 (271,'admin','2016-04-03 07:18:49','AUTHENTICATION_SUCCESS'),
 (272,'admin','2016-04-05 10:34:36','AUTHENTICATION_SUCCESS'),
 (273,'customer','2016-04-05 10:54:06','AUTHENTICATION_SUCCESS'),
 (274,'admin','2016-04-05 11:00:01','AUTHENTICATION_SUCCESS'),
 (275,'admin','2016-04-05 11:04:41','AUTHENTICATION_SUCCESS'),
 (276,'customer','2016-04-05 11:05:26','AUTHENTICATION_SUCCESS'),
 (277,'sf0020','2016-04-05 11:56:35','AUTHENTICATION_SUCCESS'),
 (278,'customer','2016-04-05 14:25:44','AUTHENTICATION_SUCCESS'),
 (279,'sf0020','2016-04-05 14:40:44','AUTHENTICATION_SUCCESS'),
 (280,'sf0017','2016-04-05 15:14:22','AUTHENTICATION_SUCCESS'),
 (281,'sf0009','2016-04-05 15:17:09','AUTHENTICATION_SUCCESS'),
 (282,'sf0021','2016-04-05 15:19:01','AUTHENTICATION_SUCCESS'),
 (283,'admin','2016-04-05 15:47:53','AUTHENTICATION_SUCCESS'),
 (284,'admin','2016-04-05 16:02:48','AUTHENTICATION_SUCCESS'),
 (285,'admin','2016-04-05 17:10:28','AUTHENTICATION_SUCCESS');
INSERT INTO `jhi_persistent_audit_event` (`event_id`,`principal`,`event_date`,`event_type`) VALUES 
 (286,'admin','2016-04-05 18:36:20','AUTHENTICATION_SUCCESS'),
 (287,'admin','2016-04-05 19:00:09','AUTHENTICATION_SUCCESS'),
 (288,'admin','2016-04-06 12:06:48','AUTHENTICATION_SUCCESS'),
 (289,'admin','2016-04-07 09:49:45','AUTHENTICATION_SUCCESS'),
 (290,'admin','2016-04-07 14:31:19','AUTHENTICATION_SUCCESS'),
 (291,'admin','2016-04-07 14:31:26','AUTHENTICATION_SUCCESS'),
 (292,'admin','2016-04-07 15:34:25','AUTHENTICATION_SUCCESS'),
 (293,'admin','2016-04-07 16:12:15','AUTHENTICATION_SUCCESS'),
 (294,'admin','2016-04-07 17:49:32','AUTHENTICATION_SUCCESS'),
 (295,'admin','2016-04-09 11:15:54','AUTHENTICATION_SUCCESS'),
 (296,'admin','2016-04-09 17:01:51','AUTHENTICATION_SUCCESS'),
 (297,'admin','2016-04-12 16:42:49','AUTHENTICATION_SUCCESS'),
 (298,'admin','2016-04-12 17:07:08','AUTHENTICATION_SUCCESS'),
 (299,'admin','2016-04-12 18:38:02','AUTHENTICATION_SUCCESS'),
 (300,'admin','2016-04-13 14:22:08','AUTHENTICATION_SUCCESS'),
 (301,'admin','2016-04-13 14:22:26','AUTHENTICATION_SUCCESS');
/*!40000 ALTER TABLE `jhi_persistent_audit_event` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`jhi_persistent_audit_evt_data`
--

DROP TABLE IF EXISTS `jhi_persistent_audit_evt_data`;
CREATE TABLE `jhi_persistent_audit_evt_data` (
  `event_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`event_id`,`name`),
  KEY `idx_persistent_audit_evt_data` (`event_id`),
  CONSTRAINT `fk_evt_pers_audit_evt_data` FOREIGN KEY (`event_id`) REFERENCES `jhi_persistent_audit_event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`jhi_persistent_audit_evt_data`
--

/*!40000 ALTER TABLE `jhi_persistent_audit_evt_data` DISABLE KEYS */;
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (1,'remoteAddress','0:0:0:0:0:0:0:1'),
 (1,'sessionId','6F890CBF95F5F123CC8DF5E9B004A5F1'),
 (2,'remoteAddress','0:0:0:0:0:0:0:1'),
 (2,'sessionId','B068299E1CB4C17A606253222924B3AC'),
 (3,'remoteAddress','0:0:0:0:0:0:0:1'),
 (3,'sessionId','03A2AFAE6E95260A6AE3F989DCC08B23'),
 (4,'remoteAddress','0:0:0:0:0:0:0:1'),
 (4,'sessionId','76042EEF04F4A767371EF1E1BD5EEAD8'),
 (5,'remoteAddress','0:0:0:0:0:0:0:1'),
 (5,'sessionId','1BB83CECB0C3B4BA516B426670EC0D20'),
 (6,'remoteAddress','127.0.0.1'),
 (6,'sessionId','1BB6A32CAFCFD13A61B85007BD141463'),
 (7,'remoteAddress','127.0.0.1'),
 (7,'sessionId','BEBC97D19669B0D9ECF918B5754C3C5A'),
 (8,'remoteAddress','0:0:0:0:0:0:0:1'),
 (8,'sessionId','C23BDF1F41B371C49DDA9F0F0E7A7FFA'),
 (9,'message','Bad credentials'),
 (9,'type','org.springframework.security.authentication.BadCredentialsException'),
 (10,'remoteAddress','0:0:0:0:0:0:0:1'),
 (10,'sessionId','491BE886F6E34F243C186FE6D2630E78'),
 (11,'remoteAddress','0:0:0:0:0:0:0:1');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (11,'sessionId','250BADCE291D76A685E33179265E360D'),
 (12,'remoteAddress','0:0:0:0:0:0:0:1'),
 (12,'sessionId','CA8D96614251DBE00E51E6DD56ECE9AF'),
 (13,'remoteAddress','0:0:0:0:0:0:0:1'),
 (13,'sessionId','EBD106262524565745CB7146D2B745EB'),
 (14,'remoteAddress','0:0:0:0:0:0:0:1'),
 (14,'sessionId','809E3416E65FB7C11CAA7C061955966F'),
 (15,'remoteAddress','0:0:0:0:0:0:0:1'),
 (15,'sessionId','9C03B4C35266BDCECF02B778B0FC4F72'),
 (16,'remoteAddress','0:0:0:0:0:0:0:1'),
 (16,'sessionId','8CEF419E1B3858FA63F74E9482170AF0'),
 (17,'remoteAddress','0:0:0:0:0:0:0:1'),
 (17,'sessionId','A467E1AE3FD34D5859D01AFAA2534F9B'),
 (18,'remoteAddress','0:0:0:0:0:0:0:1'),
 (18,'sessionId','EC126A4853CECD862267DBE3B5FCAC9E'),
 (19,'remoteAddress','0:0:0:0:0:0:0:1'),
 (19,'sessionId','79340425106DB7F0BE1C6E4A90EEDBCB'),
 (20,'remoteAddress','0:0:0:0:0:0:0:1'),
 (20,'sessionId','8C5668A864F4CBBDACEABFB00314019D'),
 (21,'remoteAddress','0:0:0:0:0:0:0:1'),
 (21,'sessionId','3920A42E28C08EB421079A0E7B38657E');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (22,'remoteAddress','0:0:0:0:0:0:0:1'),
 (22,'sessionId','A99946E833C49EA8965FE9F072C81323'),
 (23,'remoteAddress','0:0:0:0:0:0:0:1'),
 (23,'sessionId','B92450261AACE33F5657A01EB9C73053'),
 (24,'remoteAddress','0:0:0:0:0:0:0:1'),
 (24,'sessionId','458FAD783227981F1C3474484F682389'),
 (25,'remoteAddress','0:0:0:0:0:0:0:1'),
 (25,'sessionId','9A433ED0BF3A557882C495A11CB8CB33'),
 (26,'remoteAddress','0:0:0:0:0:0:0:1'),
 (26,'sessionId','6980EF8BB02C744B266B87CA1FE7AE58'),
 (27,'message','Bad credentials'),
 (27,'type','org.springframework.security.authentication.BadCredentialsException'),
 (28,'message','Bad credentials'),
 (28,'type','org.springframework.security.authentication.BadCredentialsException'),
 (29,'remoteAddress','0:0:0:0:0:0:0:1'),
 (29,'sessionId','F72209EF261A0E35214148D2BC522A74'),
 (30,'remoteAddress','0:0:0:0:0:0:0:1'),
 (30,'sessionId','545FE19B112EDDF4E0FA4734662BFD57'),
 (31,'remoteAddress','0:0:0:0:0:0:0:1'),
 (31,'sessionId','84BCBFA069FDF19CF9FEB6F7D2EC3B07');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (32,'remoteAddress','0:0:0:0:0:0:0:1'),
 (32,'sessionId','111404142BA7B3F3FBD6E3D27537294F'),
 (33,'remoteAddress','0:0:0:0:0:0:0:1'),
 (33,'sessionId','056D62A2D89AEBDC355C7D67CFCF34A7'),
 (34,'remoteAddress','0:0:0:0:0:0:0:1'),
 (34,'sessionId','D7A504C817EE1FD556C80623F273D443'),
 (35,'remoteAddress','0:0:0:0:0:0:0:1'),
 (35,'sessionId','267EABD2581C40A7672196F6AF3F8210'),
 (36,'remoteAddress','0:0:0:0:0:0:0:1'),
 (36,'sessionId','C60B514EE4073365654ADDB01B349AA1'),
 (37,'remoteAddress','0:0:0:0:0:0:0:1'),
 (37,'sessionId','66D5C6CBA82A02751C957E0024165FB4'),
 (38,'remoteAddress','0:0:0:0:0:0:0:1'),
 (38,'sessionId','F6A3E4F92C24533A5D6AE597B888D51F'),
 (39,'remoteAddress','0:0:0:0:0:0:0:1'),
 (39,'sessionId','7A24B123F746332765C31984385D71B2'),
 (40,'remoteAddress','0:0:0:0:0:0:0:1'),
 (40,'sessionId','41107A30F94BAC53D6C011D86DC15A9F'),
 (41,'remoteAddress','0:0:0:0:0:0:0:1'),
 (41,'sessionId','BEE96CF118E13CF4A8025BBB4741895F'),
 (42,'remoteAddress','0:0:0:0:0:0:0:1');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (42,'sessionId','D97DD800B1B36D3235E59AA4B32C0102'),
 (43,'remoteAddress','0:0:0:0:0:0:0:1'),
 (43,'sessionId','8BFF6D36267B81547951056C9252AB35'),
 (44,'remoteAddress','0:0:0:0:0:0:0:1'),
 (44,'sessionId','95B941658AD98AEEE6ACD8ABF6D11105'),
 (45,'remoteAddress','0:0:0:0:0:0:0:1'),
 (45,'sessionId','F6F74CD29B48CFFB36C30ADFFFA4F38A'),
 (46,'remoteAddress','0:0:0:0:0:0:0:1'),
 (46,'sessionId','86927B7E7C644C1E6C059620BCDBE742'),
 (47,'remoteAddress','0:0:0:0:0:0:0:1'),
 (47,'sessionId','B8F7DF684DB88CCDB0C463609BFE4787'),
 (48,'remoteAddress','0:0:0:0:0:0:0:1'),
 (48,'sessionId','6B4362B7376705B6D993E2AB1E19D73F'),
 (49,'remoteAddress','0:0:0:0:0:0:0:1'),
 (49,'sessionId','5229BF1D7A2CCED28CEB1C403A96D38C'),
 (50,'remoteAddress','0:0:0:0:0:0:0:1'),
 (50,'sessionId','0E821D21F320832DD509A134A13E7596'),
 (51,'remoteAddress','0:0:0:0:0:0:0:1'),
 (51,'sessionId','B2EB105033DC73EEC02422C5B5FEA8C2'),
 (52,'remoteAddress','0:0:0:0:0:0:0:1'),
 (52,'sessionId','2B98554668A1AEF6EFD7E36CCAB1FBC9');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (53,'remoteAddress','0:0:0:0:0:0:0:1'),
 (53,'sessionId','9C0E8AAC9EFA3798A8B7BC00FAC3BF5C'),
 (54,'remoteAddress','0:0:0:0:0:0:0:1'),
 (54,'sessionId','B25C8EE0BE50B511A5609B38030E0CBF'),
 (55,'remoteAddress','0:0:0:0:0:0:0:1'),
 (55,'sessionId','4BF3F6E2CD0E1369E6194DF9F306019A'),
 (56,'remoteAddress','0:0:0:0:0:0:0:1'),
 (56,'sessionId','02E1F8ABFFA2DD2D26BCB29009A332A5'),
 (57,'remoteAddress','0:0:0:0:0:0:0:1'),
 (57,'sessionId','F25A29A95A2BD4E469FE93B58EBB7561'),
 (58,'remoteAddress','0:0:0:0:0:0:0:1'),
 (58,'sessionId','1F5DDB26102B7F9AC4F0F85D9A340BAB'),
 (59,'remoteAddress','0:0:0:0:0:0:0:1'),
 (59,'sessionId','19FE66C7408768ED084765C2BAFB3702'),
 (60,'remoteAddress','0:0:0:0:0:0:0:1'),
 (60,'sessionId','D6B0A4BF1C1B85E2819719DEDCED7C04'),
 (61,'remoteAddress','0:0:0:0:0:0:0:1'),
 (61,'sessionId','582E96CAF16036CDD9EE254A24B386AA'),
 (62,'remoteAddress','0:0:0:0:0:0:0:1'),
 (62,'sessionId','AA364EEFA3DA0D11E131D11AF8DC2E51'),
 (63,'remoteAddress','0:0:0:0:0:0:0:1');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (63,'sessionId','D011E866AB5B63D7ECC9F5A5207D50E8'),
 (64,'remoteAddress','0:0:0:0:0:0:0:1'),
 (64,'sessionId','C42145F2026B716088BC5CD850D2F64D'),
 (65,'remoteAddress','0:0:0:0:0:0:0:1'),
 (65,'sessionId','34B08927179B069697E507D02F17ACA0'),
 (66,'remoteAddress','0:0:0:0:0:0:0:1'),
 (66,'sessionId','19C51896970E1AC23C64B447E968D045'),
 (67,'remoteAddress','0:0:0:0:0:0:0:1'),
 (67,'sessionId','793322D4D88D6C400B535FF37005A45A'),
 (68,'remoteAddress','0:0:0:0:0:0:0:1'),
 (68,'sessionId','83D19C5B183CA9F3162877241A4C3521'),
 (69,'remoteAddress','0:0:0:0:0:0:0:1'),
 (69,'sessionId','1C80D441C0DF54D9D5E55CA0AB18FD97'),
 (70,'remoteAddress','0:0:0:0:0:0:0:1'),
 (70,'sessionId','1BDF1493744552C20780B29DCD789B01'),
 (71,'remoteAddress','0:0:0:0:0:0:0:1'),
 (71,'sessionId','BA03C80DB8A446B297623CBAD45A867B'),
 (72,'remoteAddress','0:0:0:0:0:0:0:1'),
 (72,'sessionId','23700EC0B8913A95B9972823060F101C'),
 (73,'remoteAddress','0:0:0:0:0:0:0:1'),
 (73,'sessionId','95D6D9211BE063E997A41AED5A0916E8');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (74,'remoteAddress','0:0:0:0:0:0:0:1'),
 (74,'sessionId','F3F6D2B32E002A18D2C1221CC77811A0'),
 (75,'remoteAddress','0:0:0:0:0:0:0:1'),
 (75,'sessionId','DD3D6AA9F863C3ADFD38CDB34B8C6093'),
 (76,'remoteAddress','0:0:0:0:0:0:0:1'),
 (76,'sessionId','76D79E7F85861D8CFD7D282B2455C6F4'),
 (77,'remoteAddress','0:0:0:0:0:0:0:1'),
 (77,'sessionId','24ED36069A949503BB2564318959D83A'),
 (78,'remoteAddress','0:0:0:0:0:0:0:1'),
 (78,'sessionId','30EBE0AA431B1299F0F033244D5337B4'),
 (79,'remoteAddress','0:0:0:0:0:0:0:1'),
 (79,'sessionId','56137CAA7BD8695FF9FC96C132A12711'),
 (80,'remoteAddress','0:0:0:0:0:0:0:1'),
 (80,'sessionId','934A65CD40F50495EE7E0650CB56B078'),
 (81,'remoteAddress','0:0:0:0:0:0:0:1'),
 (81,'sessionId','BCED3D6A56F0E1B1A76C6C6FED089660'),
 (82,'remoteAddress','0:0:0:0:0:0:0:1'),
 (82,'sessionId','AE3CB5BA4F06E1DE4D928BA6D9D5F0A1'),
 (83,'remoteAddress','0:0:0:0:0:0:0:1'),
 (83,'sessionId','83E1E00936C3C20ECBB5F8AE48543108'),
 (84,'remoteAddress','0:0:0:0:0:0:0:1');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (84,'sessionId','7CECE0DB5AD1E96A7E4F60C9A0D686CF'),
 (85,'remoteAddress','0:0:0:0:0:0:0:1'),
 (85,'sessionId','CD2F4970E49B8F6C4451BDF6431B4145'),
 (86,'remoteAddress','0:0:0:0:0:0:0:1'),
 (86,'sessionId','9B16A22E5C0EDD4E1A7483946F39691F'),
 (87,'remoteAddress','0:0:0:0:0:0:0:1'),
 (87,'sessionId','0CE2E094F9B45795E8B04F95C006AEC8'),
 (88,'remoteAddress','0:0:0:0:0:0:0:1'),
 (88,'sessionId','61AA31C4C66F9DEBAFC44B0382C82597'),
 (89,'remoteAddress','127.0.0.1'),
 (89,'sessionId','3C242942DFF1338B56B9AB2D6FB43269'),
 (90,'remoteAddress','127.0.0.1'),
 (90,'sessionId','1008AEE2EB9BBADA670A4A101FD249AD'),
 (91,'remoteAddress','127.0.0.1'),
 (91,'sessionId','F71798009EEC8CB0F7B221B5D15408F7'),
 (92,'remoteAddress','0:0:0:0:0:0:0:1'),
 (92,'sessionId','8552A734A2992D59D32844D3065A6076'),
 (93,'remoteAddress','0:0:0:0:0:0:0:1'),
 (93,'sessionId','7616A1BDEDB326323AC86B94BADC7D2A'),
 (94,'remoteAddress','0:0:0:0:0:0:0:1'),
 (94,'sessionId','3BC6F911B4E0B4AEA0379F2E6FBD3E2B');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (95,'remoteAddress','127.0.0.1'),
 (95,'sessionId','A0373D62E98C8E60A9103470DCB635B5'),
 (96,'remoteAddress','0:0:0:0:0:0:0:1'),
 (96,'sessionId','CBF5C55C82D791F43DE1D387CFDE527E'),
 (97,'remoteAddress','0:0:0:0:0:0:0:1'),
 (97,'sessionId','5A1395E23DE9BF4ED724263C349AEF8F'),
 (98,'remoteAddress','0:0:0:0:0:0:0:1'),
 (98,'sessionId','581C09B9D3D91103D921C2801A9F136B'),
 (99,'remoteAddress','0:0:0:0:0:0:0:1'),
 (99,'sessionId','31E42D4D22C4D3CA51C461DA553B8403'),
 (100,'remoteAddress','0:0:0:0:0:0:0:1'),
 (100,'sessionId','C907C219FF7D15EC83DDBEA0432E2244'),
 (101,'remoteAddress','0:0:0:0:0:0:0:1'),
 (101,'sessionId','FD5FF7116242772CA11C6A8643EFA40E'),
 (102,'remoteAddress','0:0:0:0:0:0:0:1'),
 (102,'sessionId','0745897569F61B4610E2DE7654929527'),
 (103,'remoteAddress','0:0:0:0:0:0:0:1'),
 (103,'sessionId','8E1C9F6EFCDF37B92C4DB6E4C602E577'),
 (104,'remoteAddress','0:0:0:0:0:0:0:1'),
 (104,'sessionId','89DA41220D832DC9B7828B6E482EEBDD'),
 (105,'remoteAddress','0:0:0:0:0:0:0:1');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (105,'sessionId','22BE16F6FAD83591D83EDDE8744B0FF2'),
 (106,'remoteAddress','0:0:0:0:0:0:0:1'),
 (106,'sessionId','99AEAC3CF8F89EBC0FF2E65DCF8F7526'),
 (107,'remoteAddress','0:0:0:0:0:0:0:1'),
 (107,'sessionId','85F575990663218847E302B5375FBC45'),
 (108,'remoteAddress','0:0:0:0:0:0:0:1'),
 (108,'sessionId','D5FFB7EC82DAEAC95C6D1A08C40E8794'),
 (109,'remoteAddress','0:0:0:0:0:0:0:1'),
 (109,'sessionId','C1EE596A60A0717FF0D9CB700939522E'),
 (110,'remoteAddress','0:0:0:0:0:0:0:1'),
 (110,'sessionId','FE0AF23260B78DB714F72E94ED02D80B'),
 (111,'remoteAddress','0:0:0:0:0:0:0:1'),
 (111,'sessionId','7FB19CC55BCF7DA3849F51DCC486FB58'),
 (112,'remoteAddress','0:0:0:0:0:0:0:1'),
 (112,'sessionId','67B8CB93917320C9B05B85C4E15AB8C8'),
 (113,'remoteAddress','0:0:0:0:0:0:0:1'),
 (113,'sessionId','FD58C2D3B1EA51FF58DF3B72CD135333'),
 (114,'remoteAddress','0:0:0:0:0:0:0:1'),
 (114,'sessionId','FD3D6E03C2DCE05A467B10B80CF43941'),
 (115,'remoteAddress','0:0:0:0:0:0:0:1');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (115,'sessionId','D667FA7E6618EA8474BFCA1C1AA1D6E6'),
 (116,'remoteAddress','0:0:0:0:0:0:0:1'),
 (116,'sessionId','02636F23D3E302282775B7B23E19CAB7'),
 (117,'remoteAddress','0:0:0:0:0:0:0:1'),
 (117,'sessionId','8831BC08BC19A306DB87DA6CC727E00D'),
 (118,'remoteAddress','0:0:0:0:0:0:0:1'),
 (118,'sessionId','D83A16755768F711C8C87DAC2ACE30E2'),
 (119,'remoteAddress','0:0:0:0:0:0:0:1'),
 (119,'sessionId','43A954BA2A7B98834FB9FD96F608BC8A'),
 (120,'remoteAddress','0:0:0:0:0:0:0:1'),
 (120,'sessionId','D4445A948BEAE115F4294BE278AEC54A'),
 (121,'remoteAddress','0:0:0:0:0:0:0:1'),
 (121,'sessionId','8BAE1D6E04661F3C2C403472E2EA7D98'),
 (122,'remoteAddress','0:0:0:0:0:0:0:1'),
 (122,'sessionId','FC976096F4790A31D9B3DE575007EEB8'),
 (123,'remoteAddress','0:0:0:0:0:0:0:1'),
 (123,'sessionId','47A6668786DC311E15BAF3EF8E304E9E'),
 (124,'remoteAddress','0:0:0:0:0:0:0:1'),
 (124,'sessionId','66C95DC4AEA9C48BB59F0BF0789B0363'),
 (125,'remoteAddress','0:0:0:0:0:0:0:1');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (125,'sessionId','5F26804A553C3D416C902CA5C032A469'),
 (126,'remoteAddress','0:0:0:0:0:0:0:1'),
 (126,'sessionId','652B95FEFF966EC624410723695C7631'),
 (127,'remoteAddress','0:0:0:0:0:0:0:1'),
 (127,'sessionId','FF08610E6496FC0AA6042937C287B640'),
 (128,'remoteAddress','0:0:0:0:0:0:0:1'),
 (128,'sessionId','FB90E66390D29CE353B55D863FF7857F'),
 (129,'remoteAddress','0:0:0:0:0:0:0:1'),
 (129,'sessionId','DAF75DC4FC76DF0678DC8ADF39756687'),
 (130,'remoteAddress','0:0:0:0:0:0:0:1'),
 (130,'sessionId','73DE279E96FBDF414A498837E3ACAFE3'),
 (131,'remoteAddress','0:0:0:0:0:0:0:1'),
 (131,'sessionId','952D720EBCA836976B09470279DD82BE'),
 (132,'remoteAddress','0:0:0:0:0:0:0:1'),
 (132,'sessionId','1214FAF7BE1C60F4324DCEF002749D30'),
 (133,'remoteAddress','0:0:0:0:0:0:0:1'),
 (133,'sessionId','4F11439D128FDB9547989E09E73348AA'),
 (134,'remoteAddress','0:0:0:0:0:0:0:1'),
 (134,'sessionId','A11392ABBCB217BE77ABBCA2F37DE0BA'),
 (135,'remoteAddress','0:0:0:0:0:0:0:1');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (135,'sessionId','A947BA3A694816F8CFB21F44BDFDF4AA'),
 (136,'remoteAddress','0:0:0:0:0:0:0:1'),
 (136,'sessionId','0BD72C69B50CF2115A0A69D5809E7170'),
 (137,'remoteAddress','0:0:0:0:0:0:0:1'),
 (137,'sessionId','9132F59F1CFB22EB0345243FAEEFE892'),
 (138,'remoteAddress','0:0:0:0:0:0:0:1'),
 (138,'sessionId','30F9484417C790D66F16747CA40F5269'),
 (139,'remoteAddress','0:0:0:0:0:0:0:1'),
 (139,'sessionId','A20387E733470D855CE1078A6462EAFB'),
 (140,'remoteAddress','0:0:0:0:0:0:0:1'),
 (140,'sessionId','213943BFFA109E16F196DB2C44C49302'),
 (141,'remoteAddress','0:0:0:0:0:0:0:1'),
 (141,'sessionId','132577821F9F93E0DE5078E0B0AC59A8'),
 (142,'remoteAddress','0:0:0:0:0:0:0:1'),
 (142,'sessionId','4A0060A76FF738DE8F8DEC20F5CA6A31'),
 (143,'remoteAddress','0:0:0:0:0:0:0:1'),
 (143,'sessionId','FF8233928A7E17A2A28C0A6CFECA3606'),
 (144,'remoteAddress','0:0:0:0:0:0:0:1'),
 (144,'sessionId','59C7AFC80FA7EC018A7A07C04C9E4857'),
 (145,'remoteAddress','0:0:0:0:0:0:0:1');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (145,'sessionId','170204BF43F8E5AE826302859886A556'),
 (146,'remoteAddress','0:0:0:0:0:0:0:1'),
 (146,'sessionId','93ED8B1C1DF797F72D4ADD08402886A9'),
 (147,'remoteAddress','0:0:0:0:0:0:0:1'),
 (147,'sessionId','4CE79AA4F85BBD4B1F908FA1ECB3745B'),
 (148,'remoteAddress','0:0:0:0:0:0:0:1'),
 (148,'sessionId','C0EBB376727D607FB3AA7EB64E416226'),
 (149,'remoteAddress','0:0:0:0:0:0:0:1'),
 (149,'sessionId','3CCA57419CFECF7E4EA86B8E2F0C2387'),
 (150,'remoteAddress','0:0:0:0:0:0:0:1'),
 (150,'sessionId','C1CA7F4981859B6E9215A53F39E13CFB'),
 (151,'remoteAddress','0:0:0:0:0:0:0:1'),
 (151,'sessionId','50E60BFADB1C2CFC0F5CD0FDB45D553A'),
 (152,'remoteAddress','0:0:0:0:0:0:0:1'),
 (152,'sessionId','9CD81C7D9542490BF8E2C4854AE2502D'),
 (153,'remoteAddress','0:0:0:0:0:0:0:1'),
 (153,'sessionId','65E8FEDFFD43892E9FB80C0A51FB8E5A'),
 (154,'remoteAddress','0:0:0:0:0:0:0:1'),
 (154,'sessionId','DECEB535AF424A04F16D1C4216FF24EF'),
 (155,'remoteAddress','0:0:0:0:0:0:0:1');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (155,'sessionId','6655EFEC43F2FD481E1C227BD65D0840'),
 (156,'remoteAddress','0:0:0:0:0:0:0:1'),
 (156,'sessionId','E660110AB4E5226A928A3F85D6B19BEE'),
 (157,'remoteAddress','0:0:0:0:0:0:0:1'),
 (157,'sessionId','8D22C0FF7B6CAA22F55BDCA1429965B9'),
 (158,'remoteAddress','0:0:0:0:0:0:0:1'),
 (158,'sessionId','2D75917616D6F1A3D0D029210E993D17'),
 (159,'remoteAddress','0:0:0:0:0:0:0:1'),
 (159,'sessionId','79B88E476DF56F0F307CA5F0E89684D2'),
 (160,'remoteAddress','0:0:0:0:0:0:0:1'),
 (160,'sessionId','8DAEC7D30F4E393A27B4A4602C0959BD'),
 (161,'remoteAddress','0:0:0:0:0:0:0:1'),
 (161,'sessionId','F523851C13A9EAD66ED69314C5C1BABC'),
 (162,'remoteAddress','0:0:0:0:0:0:0:1'),
 (162,'sessionId','2A8CF113D8E49D8D62445C77019EC63D'),
 (163,'remoteAddress','0:0:0:0:0:0:0:1'),
 (163,'sessionId','9CF964F09711B90E13F6A3C9D3CA0FA1'),
 (164,'remoteAddress','0:0:0:0:0:0:0:1'),
 (164,'sessionId','99AD8593991A9DE7E9D53B41C15B9B74'),
 (165,'remoteAddress','0:0:0:0:0:0:0:1');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (165,'sessionId','0B655767F686FA7F9D58094E30755E59'),
 (166,'message','Bad credentials'),
 (166,'type','org.springframework.security.authentication.BadCredentialsException'),
 (167,'remoteAddress','0:0:0:0:0:0:0:1'),
 (167,'sessionId','9224431719279FCE8B1FA14AB19DC573'),
 (168,'message','Bad credentials'),
 (168,'type','org.springframework.security.authentication.BadCredentialsException'),
 (169,'remoteAddress','0:0:0:0:0:0:0:1'),
 (169,'sessionId','6EF549E06533D37E21F436941806C1B2'),
 (170,'remoteAddress','0:0:0:0:0:0:0:1'),
 (170,'sessionId','288A7E0C5117265B2C43147B50DDF747'),
 (171,'remoteAddress','0:0:0:0:0:0:0:1'),
 (171,'sessionId','39B2F824A3D69BD3EB7B389364D45681'),
 (172,'remoteAddress','0:0:0:0:0:0:0:1'),
 (172,'sessionId','D2FF69847B3020FC09D7583A4F6E6330'),
 (173,'remoteAddress','0:0:0:0:0:0:0:1'),
 (173,'sessionId','E4C3DD9CBFACF8CA03CB4E482C8F92EF'),
 (174,'remoteAddress','0:0:0:0:0:0:0:1'),
 (174,'sessionId','222A3CA3FEBC3CA25793D91C1701500B');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (175,'remoteAddress','0:0:0:0:0:0:0:1'),
 (175,'sessionId','1AC9817728FC95583EAA95E6964A90F9'),
 (176,'remoteAddress','0:0:0:0:0:0:0:1'),
 (176,'sessionId','4D566F68227DF0F204AB88133F0E2215'),
 (177,'remoteAddress','0:0:0:0:0:0:0:1'),
 (177,'sessionId','4021EE5BD2EECE22177CC84E2338C373'),
 (178,'remoteAddress','0:0:0:0:0:0:0:1'),
 (178,'sessionId','0F89D517BBCDA26A06A734A14B8F506D'),
 (179,'remoteAddress','0:0:0:0:0:0:0:1'),
 (179,'sessionId','D68750AE693575BF5621E75B5DDB6DE1'),
 (180,'remoteAddress','0:0:0:0:0:0:0:1'),
 (180,'sessionId','1930B0C5E1B71021A23A798D4F83CC94'),
 (181,'message','Bad credentials'),
 (181,'type','org.springframework.security.authentication.BadCredentialsException'),
 (182,'remoteAddress','0:0:0:0:0:0:0:1'),
 (182,'sessionId','48C9609450424BA8FB8866C73807DD2F'),
 (183,'remoteAddress','0:0:0:0:0:0:0:1'),
 (183,'sessionId','14334D43383BE6327705C352248F3F07'),
 (184,'remoteAddress','0:0:0:0:0:0:0:1'),
 (184,'sessionId','A905EF6678AAA896227B33FB222A37A5');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (185,'remoteAddress','0:0:0:0:0:0:0:1'),
 (185,'sessionId','EC7D50123A4269F28F295E886E5C2C24'),
 (186,'remoteAddress','0:0:0:0:0:0:0:1'),
 (186,'sessionId','81BDF653E455C78B5BCA72D18F009C6E'),
 (187,'remoteAddress','0:0:0:0:0:0:0:1'),
 (187,'sessionId','7AD32AD7CA7E245AFF347C0E9011AB4E'),
 (188,'remoteAddress','0:0:0:0:0:0:0:1'),
 (188,'sessionId','52401E1CFB382B23F3BB139F7486F635'),
 (189,'remoteAddress','0:0:0:0:0:0:0:1'),
 (189,'sessionId','B10B0E49EBB66CFA407692D0437A8F77'),
 (190,'remoteAddress','0:0:0:0:0:0:0:1'),
 (190,'sessionId','5F5C7DAAFFB13AD0D41A1780555C38F8'),
 (191,'remoteAddress','0:0:0:0:0:0:0:1'),
 (191,'sessionId','283960B81BF882A73C782299E7CC38D8'),
 (192,'remoteAddress','0:0:0:0:0:0:0:1'),
 (192,'sessionId','4D365EDB686669D46804EA2DBC6195CC'),
 (193,'remoteAddress','0:0:0:0:0:0:0:1'),
 (193,'sessionId','FA320D7E42FBAEE073DD7247F72FE5E8'),
 (194,'remoteAddress','0:0:0:0:0:0:0:1'),
 (194,'sessionId','869596EC0EAFA5AA4A17D45D00934103'),
 (195,'message','Bad credentials');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (195,'type','org.springframework.security.authentication.BadCredentialsException'),
 (196,'remoteAddress','0:0:0:0:0:0:0:1'),
 (196,'sessionId','E56842EED1D1B09E85B6346440113A44'),
 (197,'remoteAddress','0:0:0:0:0:0:0:1'),
 (197,'sessionId','A9D38E33EC7B6218267D7475055179C2'),
 (198,'remoteAddress','0:0:0:0:0:0:0:1'),
 (198,'sessionId','F1C44BF7335A42BF1189B63F76D1E68C'),
 (199,'remoteAddress','0:0:0:0:0:0:0:1'),
 (199,'sessionId','22973A0B404E8394A53B2016F2670051'),
 (200,'remoteAddress','0:0:0:0:0:0:0:1'),
 (200,'sessionId','F1345B335814B6888A7C6544FB65A4E2'),
 (201,'message','Bad credentials'),
 (201,'type','org.springframework.security.authentication.BadCredentialsException'),
 (202,'remoteAddress','0:0:0:0:0:0:0:1'),
 (202,'sessionId','C9BBAEE0A8D5E9C6F96F3367674F3AFB'),
 (203,'remoteAddress','0:0:0:0:0:0:0:1'),
 (203,'sessionId','ECD955C318DAEC17DC6F7AB264245017'),
 (204,'remoteAddress','0:0:0:0:0:0:0:1'),
 (204,'sessionId','F9F420CDEAA94B6C5C2B8FA4D90248FC');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (205,'remoteAddress','0:0:0:0:0:0:0:1'),
 (205,'sessionId','CC3CA8C8CDF14EE9EA7BF395B61FB215'),
 (206,'remoteAddress','0:0:0:0:0:0:0:1'),
 (206,'sessionId','3F188158B2D2D519A53C0C1FB1D6E6E7'),
 (207,'remoteAddress','0:0:0:0:0:0:0:1'),
 (207,'sessionId','DF67BE6D7192E23440237CAC0833A3C6'),
 (208,'remoteAddress','0:0:0:0:0:0:0:1'),
 (208,'sessionId','A28914D77C10E19742C3267F6ACDDE77'),
 (209,'remoteAddress','0:0:0:0:0:0:0:1'),
 (209,'sessionId','871279FAB4DF890A0D8D7001AEC15CDD'),
 (210,'remoteAddress','0:0:0:0:0:0:0:1'),
 (210,'sessionId','B09347A72F680BAE3E71F905F3266374'),
 (211,'remoteAddress','0:0:0:0:0:0:0:1'),
 (211,'sessionId','43AB6757F5EA6B41F75C87FDB8A518C2'),
 (212,'remoteAddress','0:0:0:0:0:0:0:1'),
 (212,'sessionId','D6757DAAF7C44994A4575D5392AFF664'),
 (213,'remoteAddress','0:0:0:0:0:0:0:1'),
 (213,'sessionId','7B190BC41C4E4F16557E9C9C9E00FDFB'),
 (214,'remoteAddress','0:0:0:0:0:0:0:1'),
 (214,'sessionId','157C73F5E7D7D29B28DF6C9A063E2284'),
 (215,'remoteAddress','0:0:0:0:0:0:0:1');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (215,'sessionId','BBC4B011D6F024F461D0A623B546B507'),
 (216,'remoteAddress','0:0:0:0:0:0:0:1'),
 (216,'sessionId','B4DCB2454E421DEE8287AA643DA4C9F0'),
 (217,'remoteAddress','0:0:0:0:0:0:0:1'),
 (217,'sessionId','597AFFBD21124261597DAC19C5A4733A'),
 (218,'remoteAddress','0:0:0:0:0:0:0:1'),
 (218,'sessionId','9B3077005306A43A732D78FDEF5995AB'),
 (219,'remoteAddress','0:0:0:0:0:0:0:1'),
 (219,'sessionId','F3EEBAF16DEF8779F3A01013C20A2FB5'),
 (220,'remoteAddress','0:0:0:0:0:0:0:1'),
 (220,'sessionId','5A08684C1E57FA0172D4804F1370EEB8'),
 (221,'remoteAddress','0:0:0:0:0:0:0:1'),
 (221,'sessionId','3C1DED5C5A8866C7215B182E5838C523'),
 (222,'remoteAddress','0:0:0:0:0:0:0:1'),
 (222,'sessionId','2A9F6D12A7CA246FB8DCD208EEE9FA5B'),
 (223,'remoteAddress','0:0:0:0:0:0:0:1'),
 (223,'sessionId','23812034AA63D07ADBEE5A38F0886379'),
 (224,'remoteAddress','0:0:0:0:0:0:0:1'),
 (224,'sessionId','A18EAB17BF47032D7BDCC451B19D5B90'),
 (225,'remoteAddress','0:0:0:0:0:0:0:1');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (225,'sessionId','E3054C034DA2F29014B821BC9E092456'),
 (226,'remoteAddress','0:0:0:0:0:0:0:1'),
 (226,'sessionId','A04320C56084B23365DD776993646093'),
 (227,'remoteAddress','0:0:0:0:0:0:0:1'),
 (227,'sessionId','2976C5581FA5AED4CCFF0505A53D982D'),
 (228,'remoteAddress','0:0:0:0:0:0:0:1'),
 (228,'sessionId','92C7E519CE7DE6179EB19CCDC176A62B'),
 (229,'remoteAddress','0:0:0:0:0:0:0:1'),
 (229,'sessionId','5FF53FA38F50C72AFF081EE20ABD3885'),
 (230,'remoteAddress','0:0:0:0:0:0:0:1'),
 (230,'sessionId','2044CCE7692A44A652D6E7B77880380F'),
 (231,'remoteAddress','0:0:0:0:0:0:0:1'),
 (231,'sessionId','88F947040DC98F3D2A2035643F760E13'),
 (232,'remoteAddress','0:0:0:0:0:0:0:1'),
 (232,'sessionId','703DD8BC8DE0E5AB8E9FB4A8815C76B8'),
 (233,'remoteAddress','0:0:0:0:0:0:0:1'),
 (233,'sessionId','0D5674517BB2D0F0F987CB8CD50350F2'),
 (234,'remoteAddress','0:0:0:0:0:0:0:1'),
 (234,'sessionId','62E5B5A7DFB9B2C591F6FEEDCD818C1A'),
 (235,'remoteAddress','0:0:0:0:0:0:0:1');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (235,'sessionId','8F94399F468196A72110D94FDB32B317'),
 (236,'remoteAddress','0:0:0:0:0:0:0:1'),
 (236,'sessionId','086469BD3ED8A14917756427210E98A6'),
 (237,'remoteAddress','0:0:0:0:0:0:0:1'),
 (237,'sessionId','CCEC7DA994A9849DA0A546794495B0F0'),
 (238,'remoteAddress','0:0:0:0:0:0:0:1'),
 (238,'sessionId','1F55E871619F8D68227E14A8AE47069A'),
 (239,'remoteAddress','127.0.0.1'),
 (239,'sessionId','3E35ACABA321EF5041A70542BACA06E3'),
 (240,'remoteAddress','127.0.0.1'),
 (240,'sessionId','F1AB5AB09311B45B006593B30D2CDFB5'),
 (241,'remoteAddress','0:0:0:0:0:0:0:1'),
 (241,'sessionId','EE9979299BBA4419DAE5477C1A3C093B'),
 (242,'remoteAddress','0:0:0:0:0:0:0:1'),
 (242,'sessionId','9920E29DEFD5849E760CAABB84A6E2D2'),
 (243,'remoteAddress','0:0:0:0:0:0:0:1'),
 (243,'sessionId','E687D60E75605CC9384190DB22CAD8AC'),
 (244,'remoteAddress','0:0:0:0:0:0:0:1'),
 (244,'sessionId','B71EFCF84593E484FE2342CE491B59E8'),
 (245,'remoteAddress','0:0:0:0:0:0:0:1'),
 (245,'sessionId','0BA656795E346284C4AD7D7A52096B84');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (246,'remoteAddress','0:0:0:0:0:0:0:1'),
 (246,'sessionId','2A7CEAF49EEF6ADC52708C9B4DD0CA4E'),
 (247,'remoteAddress','0:0:0:0:0:0:0:1'),
 (247,'sessionId','E9D59D5BA143BF2E015B2F1AF6D996EC'),
 (248,'remoteAddress','0:0:0:0:0:0:0:1'),
 (248,'sessionId','01DE6231B57D52092A31766FEA5BC97D'),
 (249,'remoteAddress','0:0:0:0:0:0:0:1'),
 (249,'sessionId','C1F6F52F1D68D6EB36CFE6094594A694'),
 (250,'remoteAddress','0:0:0:0:0:0:0:1'),
 (250,'sessionId','BA6CC01D47B22FC319DE0F8FEE9C047E'),
 (251,'remoteAddress','0:0:0:0:0:0:0:1'),
 (251,'sessionId','25A552732CBDBA9EA03106767FE04312'),
 (252,'remoteAddress','0:0:0:0:0:0:0:1'),
 (252,'sessionId','6F14C4CBDCA2FEA7AF0EFEA115C283FD'),
 (253,'remoteAddress','0:0:0:0:0:0:0:1'),
 (253,'sessionId','D0EFDE53BF33DB4D6FE0A7355B59B850'),
 (254,'remoteAddress','0:0:0:0:0:0:0:1'),
 (254,'sessionId','34F464957ECD9A0C7113E52EC692137A'),
 (255,'remoteAddress','0:0:0:0:0:0:0:1'),
 (255,'sessionId','0F8E1F4B6BB12D9EA3ECA09FA5C8F3EF'),
 (256,'remoteAddress','0:0:0:0:0:0:0:1');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (256,'sessionId','1A62FEF114962C44B3D8A93CD3A5FC7C'),
 (257,'remoteAddress','0:0:0:0:0:0:0:1'),
 (257,'sessionId','9521A3DDE9FE55B4AECB46DDD5FDFAF5'),
 (258,'remoteAddress','0:0:0:0:0:0:0:1'),
 (258,'sessionId','8D9E16A4EE513EF01796E8AF38C86911'),
 (259,'remoteAddress','0:0:0:0:0:0:0:1'),
 (259,'sessionId','9FD08254D28BCF23E067DB984E8C3C68'),
 (260,'remoteAddress','0:0:0:0:0:0:0:1'),
 (260,'sessionId','203C2F1171777CD73C14C620F821F780'),
 (261,'remoteAddress','0:0:0:0:0:0:0:1'),
 (261,'sessionId','10F1C5C66A5736C7B5CC6688B177C8A9'),
 (262,'message','Bad credentials'),
 (262,'type','org.springframework.security.authentication.BadCredentialsException'),
 (263,'remoteAddress','0:0:0:0:0:0:0:1'),
 (263,'sessionId','DADF6A033526C4E4C1458890D7BF97A0'),
 (264,'remoteAddress','0:0:0:0:0:0:0:1'),
 (264,'sessionId','2A86C935F8CBC129B22A2275D26FBF64'),
 (265,'remoteAddress','0:0:0:0:0:0:0:1'),
 (265,'sessionId','163B5E59F3327A0CAAD5E9CF086E32EB'),
 (266,'message','Bad credentials');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (266,'type','org.springframework.security.authentication.BadCredentialsException'),
 (267,'remoteAddress','0:0:0:0:0:0:0:1'),
 (267,'sessionId','83741110A7949E0D25E4CFF072E38981'),
 (268,'remoteAddress','127.0.0.1'),
 (268,'sessionId','4F715896F2A61480F1DB30B2D7E8DDEF'),
 (269,'remoteAddress','0:0:0:0:0:0:0:1'),
 (269,'sessionId','210F9EF380835A5C1DFCE01FCE1C5F73'),
 (270,'remoteAddress','0:0:0:0:0:0:0:1'),
 (270,'sessionId','B001458BA1E366FB5CB144E67634C0B6'),
 (271,'remoteAddress','0:0:0:0:0:0:0:1'),
 (271,'sessionId','7C95A85901394A81927CA9BF2DF5B870'),
 (272,'remoteAddress','127.0.0.1'),
 (272,'sessionId','19673A292546AC53D2A42A6CCF902738'),
 (273,'remoteAddress','127.0.0.1'),
 (273,'sessionId','D2ED26A476F9582037C2468A22DC1680'),
 (274,'remoteAddress','127.0.0.1'),
 (274,'sessionId','07B90ACCD94F4A27E744A8AAAFBBD649'),
 (275,'remoteAddress','127.0.0.1'),
 (275,'sessionId','AAFD3F578434CCB08970EEA6BD6FACC2'),
 (276,'remoteAddress','127.0.0.1');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (276,'sessionId','7ECFF94F9EB43C401514F3473B417053'),
 (277,'remoteAddress','127.0.0.1'),
 (277,'sessionId','DFC1EF484AB8F419A73A15E869BE3663'),
 (278,'remoteAddress','127.0.0.1'),
 (278,'sessionId','B1681098F4F05E22A158D9EE2719E097'),
 (279,'remoteAddress','0:0:0:0:0:0:0:1'),
 (279,'sessionId','6D0CB8FA672262CB60DB36FBD3178BEF'),
 (280,'remoteAddress','0:0:0:0:0:0:0:1'),
 (280,'sessionId','7EFD515A0EF759E6FFD7F817DB7330D4'),
 (281,'remoteAddress','0:0:0:0:0:0:0:1'),
 (281,'sessionId','DF5261AC82EF7DCA915EA853664E90CF'),
 (282,'remoteAddress','0:0:0:0:0:0:0:1'),
 (282,'sessionId','EC58296801B663902BC6AAC3458E6628'),
 (283,'remoteAddress','0:0:0:0:0:0:0:1'),
 (283,'sessionId','3F97890787CCAF8E23795171CB31A282'),
 (284,'remoteAddress','127.0.0.1'),
 (284,'sessionId','6FD630A2C12240CDF4DB4118AB19EE51'),
 (285,'remoteAddress','127.0.0.1'),
 (285,'sessionId','A1F21ABBF24E17D682A79F2E818B4646'),
 (286,'remoteAddress','127.0.0.1'),
 (286,'sessionId','CBFFAFFE0ABE6BD6062C898F3D6F0508');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (287,'remoteAddress','127.0.0.1'),
 (287,'sessionId','922AD6C2289B842979270A8529FE3463'),
 (288,'remoteAddress','127.0.0.1'),
 (288,'sessionId','9253E0EF532CE330876FD81F674F887D'),
 (289,'remoteAddress','0:0:0:0:0:0:0:1'),
 (289,'sessionId','6C355DFD7859A66D16B0A2C9154B58D2'),
 (290,'remoteAddress','0:0:0:0:0:0:0:1'),
 (290,'sessionId','C101D64891946F57E2E008BBCA50456B'),
 (291,'remoteAddress','0:0:0:0:0:0:0:1'),
 (291,'sessionId','5E0D2A833E4AE9AA40571106C6ADE614'),
 (292,'remoteAddress','0:0:0:0:0:0:0:1'),
 (292,'sessionId','0049AD4D7F13AD61A7BB96B00AB0BDC9'),
 (293,'remoteAddress','0:0:0:0:0:0:0:1'),
 (293,'sessionId','18740D8F7B045B3B4E5520F05871C13F'),
 (294,'remoteAddress','0:0:0:0:0:0:0:1'),
 (294,'sessionId','6D393994D2A70A427291206B94170040'),
 (295,'remoteAddress','0:0:0:0:0:0:0:1'),
 (295,'sessionId','2C30DE75B8346DA0FB633D10687FF370'),
 (296,'remoteAddress','0:0:0:0:0:0:0:1'),
 (296,'sessionId','4945FBE31F56C166EB2F7F66A7235960'),
 (297,'remoteAddress','0:0:0:0:0:0:0:1');
INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`,`name`,`value`) VALUES 
 (297,'sessionId','A7F33561786A9A9498214652EF5AAFB6'),
 (298,'remoteAddress','0:0:0:0:0:0:0:1'),
 (298,'sessionId','6D21A0A107AB497036F38822DF3019B2'),
 (299,'remoteAddress','0:0:0:0:0:0:0:1'),
 (299,'sessionId','DC4BCD4C9CAD397114A90283F6CD0EF4'),
 (300,'remoteAddress','127.0.0.1'),
 (300,'sessionId','200F65BFEF3B4B03FEF7157C5824A25F'),
 (301,'remoteAddress','127.0.0.1'),
 (301,'sessionId','A47E0923CCC3F5F37D0743C58F0A63A5');
/*!40000 ALTER TABLE `jhi_persistent_audit_evt_data` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`jhi_persistent_token`
--

DROP TABLE IF EXISTS `jhi_persistent_token`;
CREATE TABLE `jhi_persistent_token` (
  `series` varchar(255) NOT NULL,
  `user_id` bigint(20) default NULL,
  `token_value` varchar(255) NOT NULL,
  `token_date` date default NULL,
  `ip_address` varchar(39) default NULL,
  `user_agent` varchar(255) default NULL,
  PRIMARY KEY  (`series`),
  KEY `fk_user_persistent_token` (`user_id`),
  CONSTRAINT `fk_user_persistent_token` FOREIGN KEY (`user_id`) REFERENCES `jhi_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`jhi_persistent_token`
--

/*!40000 ALTER TABLE `jhi_persistent_token` DISABLE KEYS */;
INSERT INTO `jhi_persistent_token` (`series`,`user_id`,`token_value`,`token_date`,`ip_address`,`user_agent`) VALUES 
 ('+kuZ8fh+MT05jeTHFp5gmw==',5,'/FPZJ9OhXHNXmMOFgz7obg==','2016-03-10','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('+Pk/ksqHFtjiZEpwz8IVFw==',3,'mxORTPY9bPxFOvMgRBlUAg==','2016-03-18','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('+x9pYUuhC9mbEe9rwtR11Q==',3,'moGQ9xPllsRoWmPrNGPN5A==','2016-03-30','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('/29bYPrVgu1d1Sc7jw0g/A==',3,'8LwcwLZFkj1AZCc96MulbA==','2016-03-24','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('1+QXFJmIy6UbwHIQ6pxyqw==',15,'HCEI/JsrSbkhfqKDPYVlNQ==','2016-03-22','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('1/89/HnVJ0I06ozibiv32Q==',3,'CLNg9gJlNZ5pis+a+Q7wXg==','2016-04-01','127.0.0.1','Mozilla/5.0 (Windows NT 6.2; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0'),
 ('1V84cfVn/t71qSFvl+nJZw==',29,'nsyfHwdYGyWza9xnxrDHig==','2016-04-01','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0');
INSERT INTO `jhi_persistent_token` (`series`,`user_id`,`token_value`,`token_date`,`ip_address`,`user_agent`) VALUES 
 ('2uRUyClVWXV8AlYMNeuJOw==',3,'PErAzkiwxOnl+ZDZP6T7JQ==','2016-03-09','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('3+5ue5QHIAl3gaEJu2oyFQ==',3,'VKZnSsNabZGNesRM+Hpsvg==','2016-03-11','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('3Jc58QBWoVau1yojOb/H3g==',15,'gy3ieEY/pll52Q8TEujbag==','2016-03-25','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('4Aup8X2ZRQtO8SBDix3vAg==',3,'JmcI8+KGnhTfgXHMzc2WbQ==','2016-03-18','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('4Kz54liz72Tw0RjO2Zrkpw==',3,'x3C2IoyZxxmQ8IZ4lG8oMg==','2016-03-03','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:44.0) Gecko/20100101 Firefox/44.0'),
 ('6B2RG6/uWQnWC28vOw8aXg==',3,'8QX7Ux+CmA4n198EaajbnA==','2016-03-08','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('7wzGSQte7LQJZBy4FB00zA==',29,'3iFZ6Aa9rNbM3Mx+jwfRsw==','2016-03-29','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0');
INSERT INTO `jhi_persistent_token` (`series`,`user_id`,`token_value`,`token_date`,`ip_address`,`user_agent`) VALUES 
 ('7Ytkb8b+j1F3nPGWDNtKcw==',3,'l96/eI6viuEUtDy5AibxbA==','2016-03-10','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('94hvipCH71zaqo62IRdfRw==',3,'XVI6TLhxx+zep89XenteTw==','2016-03-21','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('9iL/4QMAvR0xB64rW5HESw==',3,'/k/ylVdhu5TQbQGtpI5N0w==','2016-03-01','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:40.0) Gecko/20100101 Firefox/40.0'),
 ('b2tUjwgyONjcsbKlUklC+Q==',3,'NiOf/v/Os1vh0byDEVURJA==','2016-03-16','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('BaKFrbA5ergaotzhQATfrw==',29,'m+gH8u2sRCjqxAeORaQ3zQ==','2016-03-23','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('BFMeF7yubUPWeHMlxnpHhg==',3,'86Dlw7pit1sjL3P4rA601A==','2016-03-14','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('bh/be/AQUN2jP5F1P7kdSQ==',3,'kn71wIORmJGn7dP9vuFMTQ==','2016-03-24','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0');
INSERT INTO `jhi_persistent_token` (`series`,`user_id`,`token_value`,`token_date`,`ip_address`,`user_agent`) VALUES 
 ('C0yHTgCTgnXcC62bNAch3g==',15,'QM8xVxLqO6GowIcWRmrfyw==','2016-03-28','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('cDuDRxT54VRDENf238evFw==',3,'qL156YzlR0uNU4rfJVaZGw==','2016-03-18','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('DEqQipDM3iLfE1PFx+mwRA==',3,'rlSkhLwJf+8q3MOatcrcDA==','2016-02-26','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:40.0) Gecko/20100101 Firefox/40.0'),
 ('E4Oy802QfILWTBjkwYm95A==',3,'PeGsLDuZMTMKFV/0eIveBQ==','2016-03-03','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:44.0) Gecko/20100101 Firefox/44.0'),
 ('F2kB3vVrHHh0k5/n0nIzKA==',3,'70Zv5H6ShoO3S9SvA5QpCg==','2016-03-07','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('fNpzeb666xEusKesIpiVaA==',15,'EB7kPB3Prax0zRKgFghQUg==','2016-03-21','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('gDSEliPWD8ZBpMxy4sKgzw==',5,'JU7tUQKbDIftXBBphqfxHg==','2016-03-31','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0');
INSERT INTO `jhi_persistent_token` (`series`,`user_id`,`token_value`,`token_date`,`ip_address`,`user_agent`) VALUES 
 ('gjgSoEiEm2u4z82bxneQbA==',15,'Q5ukTsruzqRjPjl2jNIIBA==','2016-03-28','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('H5h1sXuT/PROO3BRuTQoxQ==',3,'8Mdnjzl+cjTeaivY6fzJyg==','2016-03-08','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('hFKfqjPrW8Z/amqU43M89g==',5,'OCMXKNowMoVsmqZ2jGSrxQ==','2016-03-29','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('Hw5vcTOmIcEuAJ+K5/ttTg==',3,'o/B/WvzQojyU6CRPqa0kug==','2016-03-17','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('IgMAY7/2pqUwaRD9fRqtZA==',5,'R/v6AK3DT+5hKspBsE0QdQ==','2016-03-29','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('jRDH7snELmCidi4buUDLww==',5,'/gjFefbhA17/a1ZM8SLTsw==','2016-03-28','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('Kb8YebfE7JAJymtqjh/HBQ==',3,'NLNenPNKYp99JL0VakVcDw==','2016-04-01','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0');
INSERT INTO `jhi_persistent_token` (`series`,`user_id`,`token_value`,`token_date`,`ip_address`,`user_agent`) VALUES 
 ('KktZvzrrvQS+oXZvzgcTUg==',3,'u31QC6MQA9wwAxm5BJQjyw==','2016-03-14','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('KU6VZmBHcK3RKoGgwhLDcA==',3,'CtWXmv/L/eFLnOkikbadrw==','2016-03-24','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('ltSsrr4LGe85jyi2xaM+GQ==',5,'O2cmSBS0fFhBkpiM4zdCkA==','2016-03-31','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('mJ9QRewb5tZnJtq1JS6BeQ==',3,'Y4wzvxHQSVqsUa7uMIa7ug==','2016-03-30','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('mLyebPZIjbx7SSunOdf+Wg==',3,'41vTjgSojIAoGzh7zCvKlA==','2016-03-07','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('mwRI6gjdS4jSIbBL/M9S/A==',5,'YfiL0mj0bauty4dctUuzzw==','2016-03-21','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('N0VbVqugqcpOaPe2ycnLMQ==',3,'YsBBSdNhwbDeIWaz442tHQ==','2016-03-15','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0');
INSERT INTO `jhi_persistent_token` (`series`,`user_id`,`token_value`,`token_date`,`ip_address`,`user_agent`) VALUES 
 ('nhPyY9rXtBVRZ+qT5T9uwQ==',3,'XnQlpOF70aXhsnej7OWLug==','2016-04-13','127.0.0.1','Mozilla/5.0 (Windows NT 6.2; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0'),
 ('nicdzpFVE7fA8XUEciBnBg==',15,'jjnMZHjRSEuYg7FgpryrNw==','2016-03-29','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('nK0IBkLMvCyRtRagV7xkIA==',15,'O271OweAwksyy+Yei161xA==','2016-03-22','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('P0e/MdJF+ZPyjCmmCP/VLA==',3,'X1UpUG5k1rbHVscMv8bt+g==','2016-03-01','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:40.0) Gecko/20100101 Firefox/40.0'),
 ('PpZTKOgtRshlEF2Y5H8Nzw==',3,'2oilX1ZtHFQ62F6g/CMZMg==','2016-03-21','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('qFVuu+uRSBJTp3pUTFHbiw==',3,'0mje7iCbeSAXZrqoHwhF0A==','2016-03-17','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('R6uDzkAd46IU0D3H4E0FVA==',3,'XcfBIoCDayNepzQsEjnkJg==','2016-03-17','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0');
INSERT INTO `jhi_persistent_token` (`series`,`user_id`,`token_value`,`token_date`,`ip_address`,`user_agent`) VALUES 
 ('rXIEaYCdRMm4gzrZtlo3+Q==',3,'TgmeEQSq33s5paxqyFtkmQ==','2016-02-24','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:40.0) Gecko/20100101 Firefox/40.0'),
 ('S1GAV9aSPF32lcInQpui/w==',3,'OyizfcLbIWY828evonnLcQ==','2016-04-15','127.0.0.1','Mozilla/5.0 (Windows NT 6.2; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0'),
 ('TN6nvrS4DAcjld/PAsVu3w==',3,'pWLUEigr2nT7tCBerVO3rw==','2016-03-22','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('uBmBvYHKZMXr5UHwlzKAPA==',3,'oIXVYnHZ2CAqS/lxhNHtBQ==','2016-03-10','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('UDMPyK37cLIktTJg9P5RrQ==',3,'ShKdK3zme2OSRapV6fqKMw==','2016-03-23','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('w8R34xrr8QJmlP5bdbRg0Q==',3,'xrnCE2P4+F4Gm2wY/shF3w==','2016-03-02','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:40.0) Gecko/20100101 Firefox/40.0'),
 ('Waj7OoRQvtqW2FGm3rwFHw==',3,'DScvaJTEMdPTgvNKd4KoRg==','2016-03-21','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0');
INSERT INTO `jhi_persistent_token` (`series`,`user_id`,`token_value`,`token_date`,`ip_address`,`user_agent`) VALUES 
 ('wtWMmV27ptr0Uutob4MNiQ==',3,'kzJYJannR0ZBgbGhEbYHqQ==','2016-03-21','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('WWghGZDKONZwm9s4KmCiUQ==',3,'Kj+0GXNB2l6R0JtRxqHw/Q==','2016-04-13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('x4nyB9VRFeiND5t0i1DU8Q==',3,'cEW9l632DDQaJ+cxS1szpw==','2016-02-29','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:40.0) Gecko/20100101 Firefox/40.0'),
 ('x4RtQD81f5es8yJniJlwMg==',3,'3Uiil1Q8ezwtbjsEjH7MaQ==','2016-03-30','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('XDGXmczwil8KeD6KL6Yt1w==',3,'fbROZLGioPS/YUzyTyG2kg==','2016-03-10','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('xf8lo1lE43DIRysCXswyzQ==',3,'BRRKxIW3118BhhPFt6AyXA==','2016-03-28','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('xGIKoFe4g2VAv1/PRp0JLA==',3,'vsc1u7uz/s2rs9AmUbdl+g==','2016-04-01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 6.2; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0');
INSERT INTO `jhi_persistent_token` (`series`,`user_id`,`token_value`,`token_date`,`ip_address`,`user_agent`) VALUES 
 ('Y0+K+WI0X0yusnSLJDqyPA==',3,'rDvuHhLtRMzJOhkb63MQ7g==','2016-04-04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('Y14PvuTMLFbPHaMU7KlW9A==',3,'yHJLgjbsyzRXqkVlnn1+bA==','2016-03-22','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('yC0cZ89A6opEpVDUp7MPLA==',3,'JNF2a3Nb1kSNcOuOEsAR4Q==','2016-03-18','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0'),
 ('zFE08dIb3ttfqV37i6eHKA==',3,'4X2BHKVSVF8Lb6nvKk79IQ==','2016-04-12','127.0.0.1','Mozilla/5.0 (Windows NT 6.2; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0'),
 ('zy6YAeHzjqbMHb8NPwiMQg==',3,'RfJrmS7MnC9GxnetOTdgpg==','2016-03-11','0:0:0:0:0:0:0:1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0');
/*!40000 ALTER TABLE `jhi_persistent_token` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`jhi_user`
--

DROP TABLE IF EXISTS `jhi_user`;
CREATE TABLE `jhi_user` (
  `id` bigint(20) NOT NULL auto_increment,
  `login` varchar(50) NOT NULL,
  `password_hash` varchar(60) default NULL,
  `first_name` varchar(50) default NULL,
  `last_name` varchar(50) default NULL,
  `email` varchar(100) default NULL,
  `activated` bit(1) NOT NULL,
  `lang_key` varchar(5) default NULL,
  `activation_key` varchar(20) default NULL,
  `reset_key` varchar(20) default NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `reset_date` timestamp NULL default NULL,
  `last_modified_by` varchar(50) default NULL,
  `last_modified_date` timestamp NULL default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `idx_user_login` (`login`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `idx_user_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`jhi_user`
--

/*!40000 ALTER TABLE `jhi_user` DISABLE KEYS */;
INSERT INTO `jhi_user` (`id`,`login`,`password_hash`,`first_name`,`last_name`,`email`,`activated`,`lang_key`,`activation_key`,`reset_key`,`created_by`,`created_date`,`reset_date`,`last_modified_by`,`last_modified_date`) VALUES 
 (1,'system','$2a$10$mE.qmcV0mFU5NcKh73TZx.z4ueI/.bDWbj0T1BYyqP481kGGarKLG','System','System','system@localhost','','en',NULL,NULL,'system','2016-02-24 18:37:37',NULL,'admin','2016-03-07 14:55:39'),
 (2,'anonymousUser','$2a$10$j8S5d7Sr7.8VTOYNviDPOeWX8KcYILUVJBsYV83Y5NtECayypx9lO','Anonymous','User','anonymous@localhost','','en',NULL,NULL,'system','2016-02-24 18:37:37',NULL,NULL,NULL),
 (3,'admin','$2a$10$gSAhZrxMllrbgj/kkK9UceBPpChGWJA7SYIb1Mqo.n5aNLq1/oRrC','Administrator','Administrator','admin@localhost','','en',NULL,NULL,'system','2016-02-24 18:37:37',NULL,NULL,NULL),
 (4,'user','$2a$10$VEjxo0jq2YG9Rbk2HmX9S.k1uZBGYUHdUcid3g/vfiEl7lwWgOH/K','User','User','user@localhost','','en',NULL,NULL,'system','2016-02-24 18:37:37',NULL,NULL,NULL),
 (5,'customer','$2a$10$TYs/wcvo6fAPu0Xdt.jP3.pol1TJpvr13XvYIlBDzlut/Ytlsn/AO','customer','customer','customer@localhost','','en','NULL',NULL,'anonymousUser','2016-03-04 18:31:04',NULL,'admin','2016-03-08 10:00:31'),
 (6,'sf0006','$2a$10$.bcy9Ujl3NqgDj6zjXsRHe.UlXABdJyDbcByQ8nX9MvrHAwSYH9xi',NULL,NULL,'sf0006@localhost','','en','74075798038214678044',NULL,'anonymousUser','2016-03-18 12:43:28',NULL,'admin','2016-03-18 12:53:49');
INSERT INTO `jhi_user` (`id`,`login`,`password_hash`,`first_name`,`last_name`,`email`,`activated`,`lang_key`,`activation_key`,`reset_key`,`created_by`,`created_date`,`reset_date`,`last_modified_by`,`last_modified_date`) VALUES 
 (7,'sf0007','$2a$10$FDsPyaVUL9uFAR5vgWpX2ulAqEn5TJpoZjiCcGYqXO5iDkr11Ae3e',NULL,NULL,'sf0007@localhost','','en','96267878389108527398',NULL,'anonymousUser','2016-03-18 12:44:05',NULL,'admin','2016-03-18 12:53:50'),
 (8,'sf0008','$2a$10$/M8CkSWBuUlPxZavXb3h/.YQ.Q6lDArLBo5K/dIYcW6mdTfIf45bm',NULL,NULL,'sf0008@localhost','','en','54288279092286381964',NULL,'anonymousUser','2016-03-18 12:44:40',NULL,'admin','2016-03-18 12:53:51'),
 (9,'sf0009','$2a$10$nSqZo6ISDISQmxLFwbsq3u92OT3hOVS6mkjFlsDamxGInc8JBPtqq','Simon','Lupuga','sf0009@localhost','','en','97951374793812547574',NULL,'anonymousUser','2016-03-18 12:45:19',NULL,'sf0009','2016-03-28 12:45:10'),
 (10,'sf0010','$2a$10$rCzfnzFSb0dL3ocuA9RViuOaF1Gq5Vc0XzS7GSUKwBCv5tXI./39S','Claudius','Kaje','sf0010@localhost','','en','00161949524540976078',NULL,'anonymousUser','2016-03-18 12:45:54',NULL,'sf0010','2016-03-28 12:45:53'),
 (11,'sf0011','$2a$10$H7MmlGeb073RorJ69a1fdudLKTRLUFgkmFFeJ5xjCmtyjm.srVgDO','Vacant','vacant','sf0011@localhost','','en','33673054004780142550',NULL,'anonymousUser','2016-03-18 12:46:15',NULL,'sf0011','2016-03-28 12:46:42');
INSERT INTO `jhi_user` (`id`,`login`,`password_hash`,`first_name`,`last_name`,`email`,`activated`,`lang_key`,`activation_key`,`reset_key`,`created_by`,`created_date`,`reset_date`,`last_modified_by`,`last_modified_date`) VALUES 
 (12,'sf0012','$2a$10$sB2ETKC9vs0uljjuRtez6e0mhtaFDeJSyZGEwGIaGddJ34kRGIEpe',NULL,NULL,'sf0012@localhost','','en','71560095329758703944',NULL,'anonymousUser','2016-03-18 12:46:38',NULL,'admin','2016-03-18 12:53:56'),
 (13,'sf0013','$2a$10$okQIlNvGPOcBOadT8iyiJuC3vBGmXFtLe3UrvZpB33CWekNcdI/bu','Adoph','Shavu','sf0013@localhost','','en','91544376107529154273',NULL,'anonymousUser','2016-03-18 12:46:56',NULL,'sf0013','2016-03-28 12:47:31'),
 (14,'sf0014','$2a$10$qEvPMWpVpl54ndQdDE1FbuptYEfG9eqJbcYR7/DDXjSmaekdpwPyG','Herry','Makala','sf0014@localhost','','en','98218340790438067335',NULL,'anonymousUser','2016-03-18 12:47:34',NULL,'sf0014','2016-03-28 12:48:08'),
 (15,'sf0015','$2a$10$/396VihfwsI9iWd/UIEXKe7c3xbjwuWiePbUdUQL1Ug/tq9X2fy.i','Mbike','Jones','sf0015@localhost','','en','78744568076959050873',NULL,'anonymousUser','2016-03-18 12:47:51',NULL,'sf0015','2016-03-28 12:48:33'),
 (16,'sf0016','$2a$10$.YzGvqWeUSCQR5q2mtAl5u4ZVjBDmGCRh7xSbb5njETwx1ZwIN2bm','Fred','Selebwa','sf0016@localhost','','en','43535432288382530210',NULL,'anonymousUser','2016-03-18 12:48:46',NULL,'sf0016','2016-03-28 12:49:12');
INSERT INTO `jhi_user` (`id`,`login`,`password_hash`,`first_name`,`last_name`,`email`,`activated`,`lang_key`,`activation_key`,`reset_key`,`created_by`,`created_date`,`reset_date`,`last_modified_by`,`last_modified_date`) VALUES 
 (17,'sf0017','$2a$10$YDx44W8ShgQ0Jt7tVJXnWOMlyFJ3ernUc4Wh.yo.vVF6lYpGThccu','Eliezer','Josiah','sf0017@localhost','','en','06698912264567056315',NULL,'anonymousUser','2016-03-18 12:49:06',NULL,'sf0017','2016-03-28 12:49:56'),
 (18,'sf0018','$2a$10$if7uNqLVpZ.V5X/OkOes7uZ4gbDpwlrFmesdATE4PQrREuGff1c8G','Hellena','Mtembeje','sf0018@localhost','','en','38952305015731452387',NULL,'anonymousUser','2016-03-18 12:49:28',NULL,'sf0018','2016-03-28 12:50:47'),
 (19,'sf0019','$2a$10$43TTSOPygHilSwG5jA3joussQk3.vL.0B88bmbWGAiEyThp/0MLhm','Charles','Kiwely','sf0019@localhost','','en','80544871706487966991',NULL,'anonymousUser','2016-03-18 12:49:48',NULL,'sf0019','2016-03-28 12:51:19'),
 (20,'sf0020','$2a$10$UWsog7PJ9mJ5ALW3oT1qjuLsx4r6TtpC2.OtCi6D/qgMvD1pXuFiC',NULL,NULL,'sf0020@localhost','','en','83805380491517726753',NULL,'anonymousUser','2016-03-18 12:50:10',NULL,'admin','2016-03-18 12:54:00'),
 (21,'sf0021','$2a$10$fyfyZSZ/r94V30rK2V72r.Rs0yzTW81oB6mAvlq3Xz5OTBpBK0DJC','Salome','Mtwale','sf0021@localhost','','en','82028831560154180774',NULL,'anonymousUser','2016-03-18 12:51:39',NULL,'sf0021','2016-03-28 12:52:03');
INSERT INTO `jhi_user` (`id`,`login`,`password_hash`,`first_name`,`last_name`,`email`,`activated`,`lang_key`,`activation_key`,`reset_key`,`created_by`,`created_date`,`reset_date`,`last_modified_by`,`last_modified_date`) VALUES 
 (22,'sf0022','$2a$10$LV2mBS8VNveWYejGFcCh8OT2JoX.4oeEkPV/w5q5EDyY3dCQjUuGW','Mbaraka','Shemueta','sf0022@localhost','','en','29507620030240498935',NULL,'anonymousUser','2016-03-18 12:51:54',NULL,'sf0022','2016-03-28 12:53:17'),
 (23,'sf0023','$2a$10$ozkcRMy/Vjj6m.8O3XRg.OwDr3QybLS3qcX8/mZD.q4lzwVOxfPKW','Olivia','Masangya','sf0023@localhost','','en','73060005748380646738',NULL,'anonymousUser','2016-03-18 12:52:18',NULL,'sf0023','2016-03-28 12:53:58'),
 (24,'sf0024','$2a$10$0YPZsnW/yPzP5mx34t9Gse.x/.bAfB6nTTSBdvhifbYNzjsPQxeeW',NULL,NULL,'sf0024@localhost','','en','76650231398888348776',NULL,'anonymousUser','2016-03-18 12:52:33',NULL,'admin','2016-03-18 12:54:24'),
 (25,'sf0025','$2a$10$mUYlNHHcw0mpJiioW/p/0Ofx9qAPI6..bRfgSFHvo4ImvcB2CVQ96',NULL,NULL,'sf0025@localhost','','en','42984014546333704148',NULL,'anonymousUser','2016-03-18 12:52:46',NULL,'admin','2016-03-18 12:54:25'),
 (26,'sf0026','$2a$10$lnV2mPyzb/hLNWtYr7NeBeSe7SErEn4RwK3/Lzr6Oxjqkdj/yOUvS',NULL,NULL,'sf0026@localhost','','en','30926903415314102347',NULL,'anonymousUser','2016-03-18 12:53:00',NULL,'admin','2016-03-18 12:54:27');
INSERT INTO `jhi_user` (`id`,`login`,`password_hash`,`first_name`,`last_name`,`email`,`activated`,`lang_key`,`activation_key`,`reset_key`,`created_by`,`created_date`,`reset_date`,`last_modified_by`,`last_modified_date`) VALUES 
 (27,'sf0027','$2a$10$F58do6ARzxNnWwXFF3WVa.oH4Cnwfu9GGESf5c64Av7PnAVDDHQfu','Nobert','Kamba','sf0027@localhost','','en','88464590975638599993',NULL,'anonymousUser','2016-03-18 12:53:16',NULL,'sf0027','2016-03-28 12:57:46'),
 (28,'sf0028','$2a$10$K.A7jrXE..8CIm7SoeVMBepZyR2WdpZeQpPyUOfY429jeBaL.OMju','Francis','Hume','sf0028@localhost','','en','71805558970907066489',NULL,'anonymousUser','2016-03-18 12:53:33',NULL,'sf0028','2016-03-28 12:58:11'),
 (29,'sf0029','$2a$10$L1IXkaggwuSLeeF0fRR9CeMb/Qq6IM7EXLJI/jsdfFSOUQWf4oPHS',NULL,NULL,'sf0029@localhost','','en','68914493240806760364',NULL,'anonymousUser','2016-03-21 16:19:52',NULL,'admin','2016-03-21 16:20:23');
/*!40000 ALTER TABLE `jhi_user` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`jhi_user_authority`
--

DROP TABLE IF EXISTS `jhi_user_authority`;
CREATE TABLE `jhi_user_authority` (
  `user_id` bigint(20) NOT NULL,
  `authority_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`user_id`,`authority_name`),
  KEY `fk_authority_name` (`authority_name`),
  CONSTRAINT `fk_authority_name` FOREIGN KEY (`authority_name`) REFERENCES `jhi_authority` (`name`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `jhi_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`jhi_user_authority`
--

/*!40000 ALTER TABLE `jhi_user_authority` DISABLE KEYS */;
INSERT INTO `jhi_user_authority` (`user_id`,`authority_name`) VALUES 
 (1,'ROLE_ADMIN'),
 (3,'ROLE_ADMIN'),
 (5,'ROLE_CUSTOMER'),
 (1,'ROLE_USER'),
 (3,'ROLE_USER'),
 (4,'ROLE_USER'),
 (6,'ROLE_USER'),
 (7,'ROLE_USER'),
 (8,'ROLE_USER'),
 (9,'ROLE_USER'),
 (10,'ROLE_USER'),
 (11,'ROLE_USER'),
 (12,'ROLE_USER'),
 (13,'ROLE_USER'),
 (14,'ROLE_USER'),
 (15,'ROLE_USER'),
 (16,'ROLE_USER'),
 (17,'ROLE_USER'),
 (18,'ROLE_USER'),
 (19,'ROLE_USER'),
 (20,'ROLE_USER'),
 (21,'ROLE_USER'),
 (22,'ROLE_USER'),
 (23,'ROLE_USER'),
 (24,'ROLE_USER'),
 (25,'ROLE_USER'),
 (26,'ROLE_USER'),
 (27,'ROLE_USER'),
 (28,'ROLE_USER'),
 (29,'ROLE_USER');
/*!40000 ALTER TABLE `jhi_user_authority` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`main_sewerage_size`
--

DROP TABLE IF EXISTS `main_sewerage_size`;
CREATE TABLE `main_sewerage_size` (
  `id` bigint(20) NOT NULL auto_increment,
  `size` float NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`main_sewerage_size`
--

/*!40000 ALTER TABLE `main_sewerage_size` DISABLE KEYS */;
INSERT INTO `main_sewerage_size` (`id`,`size`) VALUES 
 (1,10),
 (2,11),
 (3,12);
/*!40000 ALTER TABLE `main_sewerage_size` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`main_water_size`
--

DROP TABLE IF EXISTS `main_water_size`;
CREATE TABLE `main_water_size` (
  `id` bigint(20) NOT NULL auto_increment,
  `size` float NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`main_water_size`
--

/*!40000 ALTER TABLE `main_water_size` DISABLE KEYS */;
INSERT INTO `main_water_size` (`id`,`size`) VALUES 
 (1,5),
 (2,6),
 (3,7);
/*!40000 ALTER TABLE `main_water_size` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`make_of_pipe`
--

DROP TABLE IF EXISTS `make_of_pipe`;
CREATE TABLE `make_of_pipe` (
  `id` bigint(20) NOT NULL auto_increment,
  `make_name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`make_of_pipe`
--

/*!40000 ALTER TABLE `make_of_pipe` DISABLE KEYS */;
INSERT INTO `make_of_pipe` (`id`,`make_name`) VALUES 
 (1,'Pipe make 1'),
 (2,'Pipe Make 2');
/*!40000 ALTER TABLE `make_of_pipe` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`manage_cash_point`
--

DROP TABLE IF EXISTS `manage_cash_point`;
CREATE TABLE `manage_cash_point` (
  `id` bigint(20) NOT NULL auto_increment,
  `today_date` timestamp NULL default NULL,
  `payee_name` varchar(255) default NULL,
  `txn_amount` float default NULL,
  `open_bal` float default NULL,
  `avail_bal` float default NULL,
  `total_receipts` int(11) default NULL,
  `location_code` varchar(255) default NULL,
  `transaction_type_master_id` bigint(20) default NULL,
  `cash_book_master_id` bigint(20) default NULL,
  `payment_types_id` bigint(20) default NULL,
  `file_number_id` bigint(20) default NULL,
  `customer_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_managecashpoint_transactiontypemaster_id` (`transaction_type_master_id`),
  KEY `fk_managecashpoint_cashbookmaster_id` (`cash_book_master_id`),
  KEY `fk_managecashpoint_paymenttypes_id` (`payment_types_id`),
  KEY `fk_managecashpoint_filenumber_id` (`file_number_id`),
  KEY `fk_managecashpoint_customer_id` (`customer_id`),
  CONSTRAINT `fk_managecashpoint_cashbookmaster_id` FOREIGN KEY (`cash_book_master_id`) REFERENCES `cash_book_master` (`id`),
  CONSTRAINT `fk_managecashpoint_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `fk_managecashpoint_filenumber_id` FOREIGN KEY (`file_number_id`) REFERENCES `file_number` (`id`),
  CONSTRAINT `fk_managecashpoint_paymenttypes_id` FOREIGN KEY (`payment_types_id`) REFERENCES `payment_types` (`id`),
  CONSTRAINT `fk_managecashpoint_transactiontypemaster_id` FOREIGN KEY (`transaction_type_master_id`) REFERENCES `transaction_type_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`manage_cash_point`
--

/*!40000 ALTER TABLE `manage_cash_point` DISABLE KEYS */;
/*!40000 ALTER TABLE `manage_cash_point` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`material_master`
--

DROP TABLE IF EXISTS `material_master`;
CREATE TABLE `material_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `material_name` varchar(255) default NULL,
  `consumable_flag` varchar(255) default NULL,
  `uom_id` varchar(255) default NULL,
  `category_id` bigint(20) default NULL,
  `sub_category_id` bigint(20) default NULL,
  `item_code_id` bigint(20) default NULL,
  `item_sub_code_id` bigint(20) default NULL,
  `rate_contract_flag` varchar(255) default NULL,
  `unit_rate` decimal(10,2) default NULL,
  `description` varchar(255) default NULL,
  `status` int(11) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `company_code_id` decimal(10,2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`material_master`
--

/*!40000 ALTER TABLE `material_master` DISABLE KEYS */;
INSERT INTO `material_master` (`id`,`material_name`,`consumable_flag`,`uom_id`,`category_id`,`sub_category_id`,`item_code_id`,`item_sub_code_id`,`rate_contract_flag`,`unit_rate`,`description`,`status`,`creation_date`,`last_modified_date`,`company_code_id`) VALUES 
 (2,'Threading Tape',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1000.00',NULL,NULL,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),
 (3,'G.S. Pipe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'30000.00',NULL,NULL,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),
 (4,'Pipe Polly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1000.00',NULL,NULL,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),
 (5,'Coupling',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),
 (6,'Bib Tape',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12000.00',NULL,NULL,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),
 (7,'Tee',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3500.00',NULL,NULL,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),
 (8,'Union',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2000.00',NULL,NULL,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),
 (9,'Elbow',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1000.00',NULL,NULL,'2016-03-23 00:00:00','2016-03-30 00:00:00',NULL);
INSERT INTO `material_master` (`id`,`material_name`,`consumable_flag`,`uom_id`,`category_id`,`sub_category_id`,`item_code_id`,`item_sub_code_id`,`rate_contract_flag`,`unit_rate`,`description`,`status`,`creation_date`,`last_modified_date`,`company_code_id`) VALUES 
 (10,'Nipple',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1000.00',NULL,NULL,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),
 (11,'Polly Connector',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2500.00',NULL,NULL,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),
 (12,'Plain Socket',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1000.00',NULL,NULL,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),
 (13,'Reducing Socket/Bush',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2000.00',NULL,NULL,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),
 (14,'Stop Cock',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12000.00',NULL,NULL,'2016-03-30 00:00:00','2016-03-30 00:00:00',NULL),
 (15,'Clamp Saddle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `material_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`menu_item`
--

DROP TABLE IF EXISTS `menu_item`;
CREATE TABLE `menu_item` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `modified_date` timestamp NULL default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`menu_item`
--

/*!40000 ALTER TABLE `menu_item` DISABLE KEYS */;
INSERT INTO `menu_item` (`id`,`name`,`path`,`modified_date`) VALUES 
 (1,'Module','#/modules','2016-03-09 00:00:00'),
 (2,'Application Form','#/applicationTxns/new','2016-03-10 00:00:00'),
 (3,'Menu Items','#/menuItems','2016-03-10 00:00:00'),
 (4,'Url','#/urls','2016-03-10 00:00:00'),
 (5,'Menu Item 2 Urls','#/menuItem2Urls','2016-03-10 00:00:00'),
 (6,'Module 2 Menu Items','#/module2MenuItems','2016-03-10 00:00:00'),
 (7,'Url 2 Roles','#/url2Roles','2016-03-10 00:00:00'),
 (8,'Application Details','#/applicationTxns','2016-03-10 00:00:00'),
 (9,'Manage Cash Point','#/manageCashPoints','2016-03-10 00:00:00'),
 (10,'Feasibility Study','#/feasibilityStudys','2016-03-11 00:00:00'),
 (11,'Prepare Proceedings','#/proceedingss','2016-03-15 00:00:00'),
 (12,'Proceeding Form','#/proceedingss/new','2016-03-22 00:00:00'),
 (13,'Item Category Master','#/itemCategoryMasters','2016-03-30 00:00:00'),
 (14,'Item Sub Category Masters','#/itemSubCategoryMasters','2016-03-30 00:00:00'),
 (15,'Item Code Masters','#/itemCodeMasters','2016-03-30 00:00:00'),
 (16,'Item Company Masters','#/itemCompanyMasters','2016-03-30 00:00:00');
INSERT INTO `menu_item` (`id`,`name`,`path`,`modified_date`) VALUES 
 (17,'Item Sub Code Master','#/itemSubCodeMasters','2016-03-30 00:00:00'),
 (18,'Material Master','#/materialMasters','2016-03-30 00:00:00'),
 (19,'Sib Entry','#/sibEntrys','2016-03-30 00:00:00'),
 (20,'Bill Of Material','#/billOfMaterials','2016-04-01 00:00:00'),
 (21,'Access List','#/accessLists','2016-03-15 00:00:00'),
 (22,'Bill Full Details','#/billFullDetailss','2016-03-15 00:00:00'),
 (23,'Collection Details','#/collDetailss/new','2016-03-15 00:00:00'),
 (24,'Current Users','#/currentUserss','2016-03-15 00:00:00'),
 (25,'Customer Details','#/custDetailss','2016-03-15 00:00:00'),
 (26,'Terminal','#/terminals','2016-03-15 00:00:00'),
 (27,'Terminal Log','#/terminalLogs','2016-03-15 00:00:00'),
 (28,'Version','#/versions','2016-03-15 00:00:00'),
 (29,'Complaint Type Master','#/complaintTypeMasters','2016-03-29 00:00:00'),
 (30,'Customer Complaints','#/customerComplaintss','2016-03-29 00:00:00'),
 (31,'Bill Details','#/billDetailss/new','2016-04-12 00:00:00');
/*!40000 ALTER TABLE `menu_item` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`menu_item2_url`
--

DROP TABLE IF EXISTS `menu_item2_url`;
CREATE TABLE `menu_item2_url` (
  `id` bigint(20) NOT NULL auto_increment,
  `menu_item_id` bigint(20) default NULL,
  `url_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_menuitem2url_menuitem_id` (`menu_item_id`),
  KEY `fk_menuitem2url_url_id` (`url_id`),
  CONSTRAINT `fk_menuitem2url_menuitem_id` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_item` (`id`),
  CONSTRAINT `fk_menuitem2url_url_id` FOREIGN KEY (`url_id`) REFERENCES `url` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`menu_item2_url`
--

/*!40000 ALTER TABLE `menu_item2_url` DISABLE KEYS */;
INSERT INTO `menu_item2_url` (`id`,`menu_item_id`,`url_id`) VALUES 
 (1,1,1),
 (2,2,8),
 (3,3,3),
 (4,4,4),
 (5,5,5),
 (6,6,6),
 (7,7,7),
 (8,8,2),
 (9,9,9),
 (10,10,10),
 (11,11,11),
 (12,12,12),
 (13,13,13),
 (14,14,14),
 (15,15,15),
 (16,16,16),
 (17,17,17),
 (18,18,18),
 (19,19,19),
 (20,20,20),
 (21,21,21),
 (22,22,22),
 (23,23,23),
 (24,24,24),
 (25,25,25),
 (26,26,26),
 (27,27,27),
 (28,28,28),
 (29,29,29),
 (30,30,30),
 (31,31,31);
/*!40000 ALTER TABLE `menu_item2_url` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`meter_details`
--

DROP TABLE IF EXISTS `meter_details`;
CREATE TABLE `meter_details` (
  `id` bigint(20) NOT NULL auto_increment,
  `meter_id` varchar(255) NOT NULL,
  `meter_type` varchar(255) default NULL,
  `meter_make` varchar(255) default NULL,
  `min` float default NULL,
  `max` float default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`meter_details`
--

/*!40000 ALTER TABLE `meter_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `meter_details` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`mmg_material_master`
--

DROP TABLE IF EXISTS `mmg_material_master`;
CREATE TABLE `mmg_material_master` (
  `id` bigint(10) NOT NULL,
  `material_name` varchar(200) default NULL,
  `consumable_flag` varchar(5) default NULL,
  `uom_id` bigint(10) default NULL,
  `category_id` bigint(10) default NULL,
  `sub_category_id` bigint(10) default NULL,
  `item_code_id` bigint(10) default NULL,
  `item_sub_code_id` bigint(10) default NULL,
  `rate_contract_flag` varchar(5) default NULL,
  `unit_rate` bigint(126) default NULL,
  `description` varchar(500) default NULL,
  `status` bigint(10) default NULL,
  `creation_date` datetime default NULL,
  `last_modified_date` datetime default NULL,
  `company_code_id` bigint(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`mmg_material_master`
--

/*!40000 ALTER TABLE `mmg_material_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `mmg_material_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`mmg_terms_master`
--

DROP TABLE IF EXISTS `mmg_terms_master`;
CREATE TABLE `mmg_terms_master` (
  `id` bigint(10) NOT NULL auto_increment,
  `name` varchar(25) default NULL,
  `description` varchar(500) default NULL,
  `status` bigint(10) default NULL,
  `creation_date` datetime default NULL,
  `last_modified_date` datetime default NULL,
  `tax_type_id` bigint(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`mmg_terms_master`
--

/*!40000 ALTER TABLE `mmg_terms_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `mmg_terms_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `priority` int(11) default NULL,
  `modified_date` timestamp NULL default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`module`
--

/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` (`id`,`name`,`priority`,`modified_date`) VALUES 
 (1,'Role Management',1,'2016-03-09 00:00:00'),
 (2,'Connection',2,'2016-03-10 00:00:00'),
 (3,'Items Details',3,'2016-03-30 00:00:00'),
 (4,'Billing and Collection',3,'2016-03-15 00:00:00'),
 (5,'Customer Care',4,'2016-03-29 00:00:00');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`module2_menu_item`
--

DROP TABLE IF EXISTS `module2_menu_item`;
CREATE TABLE `module2_menu_item` (
  `id` bigint(20) NOT NULL auto_increment,
  `priority` int(11) default NULL,
  `module_id` bigint(20) default NULL,
  `menu_item_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_module2menuitem_module_id` (`module_id`),
  KEY `fk_module2menuitem_menuitem_id` (`menu_item_id`),
  CONSTRAINT `fk_module2menuitem_menuitem_id` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_item` (`id`),
  CONSTRAINT `fk_module2menuitem_module_id` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`module2_menu_item`
--

/*!40000 ALTER TABLE `module2_menu_item` DISABLE KEYS */;
INSERT INTO `module2_menu_item` (`id`,`priority`,`module_id`,`menu_item_id`) VALUES 
 (1,1,2,2),
 (2,1,1,1),
 (3,2,1,3),
 (4,3,1,4),
 (5,4,1,5),
 (6,5,1,6),
 (7,6,1,7),
 (8,2,2,8),
 (9,6,2,9),
 (10,3,2,10),
 (11,4,2,11),
 (12,5,2,12),
 (13,1,3,13),
 (14,2,3,14),
 (15,3,3,15),
 (16,4,3,16),
 (17,5,3,17),
 (18,6,3,18),
 (19,7,3,19),
 (20,7,2,20),
 (21,1,4,21),
 (22,2,4,22),
 (23,3,4,23),
 (24,4,4,24),
 (25,5,4,25),
 (26,6,4,26),
 (27,7,4,27),
 (28,8,4,28),
 (29,2,5,29),
 (30,1,5,30),
 (31,9,4,31);
/*!40000 ALTER TABLE `module2_menu_item` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`org_hierarchy`
--

DROP TABLE IF EXISTS `org_hierarchy`;
CREATE TABLE `org_hierarchy` (
  `id` bigint(20) NOT NULL auto_increment,
  `hierarchy_name` varchar(255) default NULL,
  `parent_hierarchy_id` int(11) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_orghierarchy_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_orghierarchy_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`org_hierarchy`
--

/*!40000 ALTER TABLE `org_hierarchy` DISABLE KEYS */;
INSERT INTO `org_hierarchy` (`id`,`hierarchy_name`,`parent_hierarchy_id`,`creation_date`,`last_modified_date`,`status_master_id`) VALUES 
 (1,'Ministry Of Waters',0,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (2,'Board Of Directors',1,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (3,'Energy & Water Utilities Regulatory Authority',2,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (4,'Managing Director',2,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (5,'Internal Auditor',4,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (6,'Legal Officier',4,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (7,'Public Relations Officer',4,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (8,'HPMU',4,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (9,'Stores & Supplies Officer',8,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (10,'Technical Manager',4,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (11,'Commercial Manager',4,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (12,'Finance Manager',4,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (13,'Human Resource & Administration Manager',4,'2016-03-18 00:00:00','2016-03-18 00:00:00',2);
INSERT INTO `org_hierarchy` (`id`,`hierarchy_name`,`parent_hierarchy_id`,`creation_date`,`last_modified_date`,`status_master_id`) VALUES 
 (14,'Officer, GIS, Planning, Design & Construction',10,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (15,'Officer, Operation & Maintance - NRW, Water Supply and Sanitation',10,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (16,'Billing Officer',11,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (17,'Credit Control Officer',11,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (18,'ICT & Customer Care Officer',11,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (19,'Accountant',12,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (20,'Human Resource & Administration Section',13,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (21,'Zonal Supervisers',16,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (22,'Assistant Accountant(Revenue)',19,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (23,'Assistant Accountant(Expenditure)',19,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (24,'Technical Zonal Supervisor',15,'2016-03-18 00:00:00','2016-03-18 00:00:00',2);
INSERT INTO `org_hierarchy` (`id`,`hierarchy_name`,`parent_hierarchy_id`,`creation_date`,`last_modified_date`,`status_master_id`) VALUES 
 (25,'Customer',10,'2016-03-18 00:00:00','2016-03-18 00:00:00',2);
/*!40000 ALTER TABLE `org_hierarchy` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`org_role_hierarchy`
--

DROP TABLE IF EXISTS `org_role_hierarchy`;
CREATE TABLE `org_role_hierarchy` (
  `id` bigint(20) NOT NULL auto_increment,
  `role_hierarchy_name` varchar(255) default NULL,
  `parent_role_hierarchy_id` int(11) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_orgrolehierarchy_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_orgrolehierarchy_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`org_role_hierarchy`
--

/*!40000 ALTER TABLE `org_role_hierarchy` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_role_hierarchy` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`org_role_instance`
--

DROP TABLE IF EXISTS `org_role_instance`;
CREATE TABLE `org_role_instance` (
  `id` bigint(20) NOT NULL auto_increment,
  `org_role_name` varchar(255) default NULL,
  `parent_org_role_id` int(11) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `is_head` int(11) default NULL,
  `status_master_id` bigint(20) default NULL,
  `org_role_hierarchy_id` bigint(20) default NULL,
  `departments_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_orgroleinstance_statusmaster_id` (`status_master_id`),
  KEY `fk_orgroleinstance_orgrolehierarchy_id` (`org_role_hierarchy_id`),
  KEY `fk_orgroleinstance_departmentsmaster_id` (`departments_master_id`),
  CONSTRAINT `fk_orgroleinstance_departmentsmaster_id` FOREIGN KEY (`departments_master_id`) REFERENCES `departments_master` (`id`),
  CONSTRAINT `fk_orgroleinstance_orgrolehierarchy_id` FOREIGN KEY (`org_role_hierarchy_id`) REFERENCES `org_role_hierarchy` (`id`),
  CONSTRAINT `fk_orgroleinstance_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`org_role_instance`
--

/*!40000 ALTER TABLE `org_role_instance` DISABLE KEYS */;
INSERT INTO `org_role_instance` (`id`,`org_role_name`,`parent_org_role_id`,`creation_date`,`last_modified_date`,`is_head`,`status_master_id`,`org_role_hierarchy_id`,`departments_master_id`) VALUES 
 (1,'Ministry Of Waters',0,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (2,'Board Of Directors',1,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (3,'Energy & Water Utilities Regulatory Authority',2,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (4,'Managing Director',2,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (5,'Internal Auditor',4,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (6,'Legal Officier',4,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (7,'Public Relations Officer',4,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (8,'HPMU',4,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (9,'Stores & Supplies Officer',8,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (10,'Technical Manager',4,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL);
INSERT INTO `org_role_instance` (`id`,`org_role_name`,`parent_org_role_id`,`creation_date`,`last_modified_date`,`is_head`,`status_master_id`,`org_role_hierarchy_id`,`departments_master_id`) VALUES 
 (11,'Commercial Manager',4,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (12,'Finance Manager',4,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (13,'Human Resource & Administration Manager',4,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (14,'Officer, GIS, Planning, Design & Construction',10,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (15,'Officer, Operation & Maintance - NRW, Water Supply and Sanitation',10,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (16,'Billing Officer',11,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (17,'Credit Control Officer',11,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (18,'ICT & Customer Care Officer',11,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (19,'Accountant',12,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL);
INSERT INTO `org_role_instance` (`id`,`org_role_name`,`parent_org_role_id`,`creation_date`,`last_modified_date`,`is_head`,`status_master_id`,`org_role_hierarchy_id`,`departments_master_id`) VALUES 
 (20,'Human Resource & Administration Section',13,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (21,'Zonal Supervisers',16,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (22,'Assistant Accountant(Revenue)',19,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (23,'Assistant Accountant(Expenditure)',19,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL),
 (24,'Technical Zonal Supervisor',15,'2016-03-21 00:00:00','2016-03-21 00:00:00',1,2,NULL,NULL),
 (25,'Customer',10,'2016-03-18 00:00:00','2016-03-18 00:00:00',1,2,NULL,NULL);
/*!40000 ALTER TABLE `org_role_instance` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`org_roles_master`
--

DROP TABLE IF EXISTS `org_roles_master`;
CREATE TABLE `org_roles_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `org_role_name` varchar(255) default NULL,
  `hierarchy_id` int(11) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_orgrolesmaster_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_orgrolesmaster_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`org_roles_master`
--

/*!40000 ALTER TABLE `org_roles_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_roles_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`payment_types`
--

DROP TABLE IF EXISTS `payment_types`;
CREATE TABLE `payment_types` (
  `id` bigint(20) NOT NULL auto_increment,
  `payment_mode` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`payment_types`
--

/*!40000 ALTER TABLE `payment_types` DISABLE KEYS */;
INSERT INTO `payment_types` (`id`,`payment_mode`) VALUES 
 (1,'CASH'),
 (2,'DEMAND DRAFT (DD)'),
 (3,'CHEQUE');
/*!40000 ALTER TABLE `payment_types` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`percentage_master`
--

DROP TABLE IF EXISTS `percentage_master`;
CREATE TABLE `percentage_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `percent_type` varchar(255) default NULL,
  `percent_value` double default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`percentage_master`
--

/*!40000 ALTER TABLE `percentage_master` DISABLE KEYS */;
INSERT INTO `percentage_master` (`id`,`percent_type`,`percent_value`) VALUES 
 (1,'Supervision',10),
 (2,'Labour Charges',20),
 (3,'Site Survey',5),
 (4,'Connection Fee of A & B',20);
/*!40000 ALTER TABLE `percentage_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`pipe_size_master`
--

DROP TABLE IF EXISTS `pipe_size_master`;
CREATE TABLE `pipe_size_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `pipe_size` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`pipe_size_master`
--

/*!40000 ALTER TABLE `pipe_size_master` DISABLE KEYS */;
INSERT INTO `pipe_size_master` (`id`,`pipe_size`) VALUES 
 (1,15),
 (2,20),
 (3,25),
 (4,40),
 (5,50);
/*!40000 ALTER TABLE `pipe_size_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`proceedings`
--

DROP TABLE IF EXISTS `proceedings`;
CREATE TABLE `proceedings` (
  `id` bigint(20) NOT NULL auto_increment,
  `sub_total_a` double default NULL,
  `supervision_charge` double default NULL,
  `labour_charge` double default NULL,
  `site_survey` double default NULL,
  `sub_total_b` double default NULL,
  `connection_fee` double default NULL,
  `water_meter_shs` double default NULL,
  `application_form_fee` double default NULL,
  `grand_total` double default NULL,
  `supervision_percent` double default NULL,
  `labour_charge_percent` double default NULL,
  `site_survey_percent` double default NULL,
  `connection_fee_percent` double default NULL,
  `application_txn_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_proceedings_applicationtxn_id` (`application_txn_id`),
  CONSTRAINT `fk_proceedings_applicationtxn_id` FOREIGN KEY (`application_txn_id`) REFERENCES `application_txn` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`proceedings`
--

/*!40000 ALTER TABLE `proceedings` DISABLE KEYS */;
/*!40000 ALTER TABLE `proceedings` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`re_allotment`
--

DROP TABLE IF EXISTS `re_allotment`;
CREATE TABLE `re_allotment` (
  `id` bigint(20) NOT NULL auto_increment,
  `file_number_id` bigint(20) default NULL,
  `customer_id` bigint(20) default NULL,
  `feasibility_status_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_reallotment_filenumber_id` (`file_number_id`),
  KEY `fk_reallotment_customer_id` (`customer_id`),
  KEY `fk_reallotment_feasibilitystatus_id` (`feasibility_status_id`),
  CONSTRAINT `fk_reallotment_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `fk_reallotment_feasibilitystatus_id` FOREIGN KEY (`feasibility_status_id`) REFERENCES `feasibility_status` (`id`),
  CONSTRAINT `fk_reallotment_filenumber_id` FOREIGN KEY (`file_number_id`) REFERENCES `file_number` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`re_allotment`
--

/*!40000 ALTER TABLE `re_allotment` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_allotment` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`receipt`
--

DROP TABLE IF EXISTS `receipt`;
CREATE TABLE `receipt` (
  `id` bigint(20) NOT NULL auto_increment,
  `amount` double default NULL,
  `bank_name` varchar(255) default NULL,
  `branch_name` varchar(255) default NULL,
  `check_or_dd_date` date default NULL,
  `check_or_dd_no` varchar(255) default NULL,
  `bill_date` date default NULL,
  `application_txn_id` bigint(20) default NULL,
  `payment_types_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_receipt_applicationtxn_id` (`application_txn_id`),
  KEY `fk_receipt_paymenttypes_id` (`payment_types_id`),
  CONSTRAINT `fk_receipt_paymenttypes_id` FOREIGN KEY (`payment_types_id`) REFERENCES `payment_types` (`id`),
  CONSTRAINT `fk_receipt_applicationtxn_id` FOREIGN KEY (`application_txn_id`) REFERENCES `application_txn` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`receipt`
--

/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`req_desig_workflow_mapping`
--

DROP TABLE IF EXISTS `req_desig_workflow_mapping`;
CREATE TABLE `req_desig_workflow_mapping` (
  `id` bigint(20) NOT NULL auto_increment,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `workflow_master_id` bigint(20) default NULL,
  `request_master_id` bigint(20) default NULL,
  `designation_master_id` bigint(20) default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_reqdesigworkflowmapping_workflowmaster_id` (`workflow_master_id`),
  KEY `fk_reqdesigworkflowmapping_requestmaster_id` (`request_master_id`),
  KEY `fk_reqdesigworkflowmapping_designationmaster_id` (`designation_master_id`),
  KEY `fk_reqdesigworkflowmapping_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_reqdesigworkflowmapping_designationmaster_id` FOREIGN KEY (`designation_master_id`) REFERENCES `designation_master` (`id`),
  CONSTRAINT `fk_reqdesigworkflowmapping_requestmaster_id` FOREIGN KEY (`request_master_id`) REFERENCES `request_master` (`id`),
  CONSTRAINT `fk_reqdesigworkflowmapping_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`),
  CONSTRAINT `fk_reqdesigworkflowmapping_workflowmaster_id` FOREIGN KEY (`workflow_master_id`) REFERENCES `workflow_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`req_desig_workflow_mapping`
--

/*!40000 ALTER TABLE `req_desig_workflow_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `req_desig_workflow_mapping` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`req_org_workflow_mapping`
--

DROP TABLE IF EXISTS `req_org_workflow_mapping`;
CREATE TABLE `req_org_workflow_mapping` (
  `id` bigint(20) NOT NULL auto_increment,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `workflow_master_id` bigint(20) default NULL,
  `request_master_id` bigint(20) default NULL,
  `org_role_instance_id` bigint(20) default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_reqorgworkflowmapping_workflowmaster_id` (`workflow_master_id`),
  KEY `fk_reqorgworkflowmapping_requestmaster_id` (`request_master_id`),
  KEY `fk_reqorgworkflowmapping_orgroleinstance_id` (`org_role_instance_id`),
  KEY `fk_reqorgworkflowmapping_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_reqorgworkflowmapping_orgroleinstance_id` FOREIGN KEY (`org_role_instance_id`) REFERENCES `org_role_instance` (`id`),
  CONSTRAINT `fk_reqorgworkflowmapping_requestmaster_id` FOREIGN KEY (`request_master_id`) REFERENCES `request_master` (`id`),
  CONSTRAINT `fk_reqorgworkflowmapping_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`),
  CONSTRAINT `fk_reqorgworkflowmapping_workflowmaster_id` FOREIGN KEY (`workflow_master_id`) REFERENCES `workflow_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`req_org_workflow_mapping`
--

/*!40000 ALTER TABLE `req_org_workflow_mapping` DISABLE KEYS */;
INSERT INTO `req_org_workflow_mapping` (`id`,`creation_date`,`last_modified_date`,`workflow_master_id`,`request_master_id`,`org_role_instance_id`,`status_master_id`) VALUES 
 (1,'2016-03-21 00:00:00','2016-03-21 00:00:00',1,1,25,2),
 (2,'2016-03-21 00:00:00','2016-03-21 00:00:00',1,1,10,2),
 (3,'2016-03-21 00:00:00','2016-03-21 00:00:00',4,3,25,2);
/*!40000 ALTER TABLE `req_org_workflow_mapping` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`request_master`
--

DROP TABLE IF EXISTS `request_master`;
CREATE TABLE `request_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `request_type` varchar(255) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `description` varchar(255) default NULL,
  `internal_flag` int(11) default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_requestmaster_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_requestmaster_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`request_master`
--

/*!40000 ALTER TABLE `request_master` DISABLE KEYS */;
INSERT INTO `request_master` (`id`,`request_type`,`creation_date`,`last_modified_date`,`description`,`internal_flag`,`status_master_id`) VALUES 
 (1,'REQUISITION','2016-03-21 00:00:00','2016-03-21 00:00:00',NULL,0,2),
 (2,'LEAVE','2016-03-26 00:00:00','2016-03-26 00:00:00',NULL,0,2),
 (3,'INCORRECT BILL','2016-03-31 00:00:00','2016-03-31 00:00:00',NULL,0,2),
 (4,'WATER LEAKAGE','2016-03-31 00:00:00','2016-03-31 00:00:00',NULL,0,2),
 (5,'SERVICE UNAVAILABILITY','2016-03-31 00:00:00','2016-03-31 00:00:00',NULL,0,2);
/*!40000 ALTER TABLE `request_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`request_workflow_history`
--

DROP TABLE IF EXISTS `request_workflow_history`;
CREATE TABLE `request_workflow_history` (
  `id` bigint(20) NOT NULL auto_increment,
  `request_stage` int(11) default NULL,
  `assigned_date` timestamp NULL default NULL,
  `actioned_date` timestamp NULL default NULL,
  `remarks` varchar(255) default NULL,
  `ip_address` varchar(255) default NULL,
  `assigned_role` int(11) default NULL,
  `domain_object` bigint(20) default NULL,
  `assigned_from_id` bigint(20) default NULL,
  `assigned_to_id` bigint(20) default NULL,
  `status_master_id` bigint(20) default NULL,
  `request_master_id` bigint(20) default NULL,
  `workflow_master_id` bigint(20) default NULL,
  `workflow_stage_master_id` bigint(20) default NULL,
  `applied_by_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_requestworkflowhistory_assignedfrom_id` (`assigned_from_id`),
  KEY `fk_requestworkflowhistory_assignedto_id` (`assigned_to_id`),
  KEY `fk_requestworkflowhistory_statusmaster_id` (`status_master_id`),
  KEY `fk_requestworkflowhistory_requestmaster_id` (`request_master_id`),
  KEY `fk_requestworkflowhistory_workflowmaster_id` (`workflow_master_id`),
  KEY `fk_requestworkflowhistory_workflowstagemaster_id` (`workflow_stage_master_id`),
  KEY `fk_requestworkflowhistory_appliedby_id` (`applied_by_id`),
  CONSTRAINT `fk_requestworkflowhistory_appliedby_id` FOREIGN KEY (`applied_by_id`) REFERENCES `jhi_user` (`id`),
  CONSTRAINT `fk_requestworkflowhistory_assignedfrom_id` FOREIGN KEY (`assigned_from_id`) REFERENCES `jhi_user` (`id`),
  CONSTRAINT `fk_requestworkflowhistory_assignedto_id` FOREIGN KEY (`assigned_to_id`) REFERENCES `jhi_user` (`id`),
  CONSTRAINT `fk_requestworkflowhistory_requestmaster_id` FOREIGN KEY (`request_master_id`) REFERENCES `request_master` (`id`),
  CONSTRAINT `fk_requestworkflowhistory_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`),
  CONSTRAINT `fk_requestworkflowhistory_workflowmaster_id` FOREIGN KEY (`workflow_master_id`) REFERENCES `workflow_master` (`id`),
  CONSTRAINT `fk_requestworkflowhistory_workflowstagemaster_id` FOREIGN KEY (`workflow_stage_master_id`) REFERENCES `workflow_stage_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`request_workflow_history`
--

/*!40000 ALTER TABLE `request_workflow_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_workflow_history` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`request_workflow_mapping`
--

DROP TABLE IF EXISTS `request_workflow_mapping`;
CREATE TABLE `request_workflow_mapping` (
  `id` bigint(20) NOT NULL auto_increment,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `status_master_id` bigint(20) default NULL,
  `workflow_master_id` bigint(20) default NULL,
  `request_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_requestworkflowmapping_statusmaster_id` (`status_master_id`),
  KEY `fk_requestworkflowmapping_workflowmaster_id` (`workflow_master_id`),
  KEY `fk_requestworkflowmapping_requestmaster_id` (`request_master_id`),
  CONSTRAINT `fk_requestworkflowmapping_requestmaster_id` FOREIGN KEY (`request_master_id`) REFERENCES `request_master` (`id`),
  CONSTRAINT `fk_requestworkflowmapping_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`),
  CONSTRAINT `fk_requestworkflowmapping_workflowmaster_id` FOREIGN KEY (`workflow_master_id`) REFERENCES `workflow_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`request_workflow_mapping`
--

/*!40000 ALTER TABLE `request_workflow_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_workflow_mapping` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`role_workflow_mapping`
--

DROP TABLE IF EXISTS `role_workflow_mapping`;
CREATE TABLE `role_workflow_mapping` (
  `id` bigint(20) NOT NULL auto_increment,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `status_master_id` bigint(20) default NULL,
  `org_role_instance_id` bigint(20) default NULL,
  `workflow_master_id` bigint(20) default NULL,
  `request_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_roleworkflowmapping_statusmaster_id` (`status_master_id`),
  KEY `fk_roleworkflowmapping_orgroleinstance_id` (`org_role_instance_id`),
  KEY `fk_roleworkflowmapping_workflowmaster_id` (`workflow_master_id`),
  KEY `fk_roleworkflowmapping_requestmaster_id` (`request_master_id`),
  CONSTRAINT `fk_roleworkflowmapping_orgroleinstance_id` FOREIGN KEY (`org_role_instance_id`) REFERENCES `org_role_instance` (`id`),
  CONSTRAINT `fk_roleworkflowmapping_requestmaster_id` FOREIGN KEY (`request_master_id`) REFERENCES `request_master` (`id`),
  CONSTRAINT `fk_roleworkflowmapping_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`),
  CONSTRAINT `fk_roleworkflowmapping_workflowmaster_id` FOREIGN KEY (`workflow_master_id`) REFERENCES `workflow_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`role_workflow_mapping`
--

/*!40000 ALTER TABLE `role_workflow_mapping` DISABLE KEYS */;
INSERT INTO `role_workflow_mapping` (`id`,`creation_date`,`last_modified_date`,`status_master_id`,`org_role_instance_id`,`workflow_master_id`,`request_master_id`) VALUES 
 (1,'2016-03-21 00:00:00','2016-03-21 00:00:00',2,10,1,1),
 (2,'2016-03-21 00:00:00','2016-03-21 00:00:00',2,24,1,1),
 (3,'2016-03-21 00:00:00','2016-03-21 00:00:00',2,15,1,1);
/*!40000 ALTER TABLE `role_workflow_mapping` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`scheme_master`
--

DROP TABLE IF EXISTS `scheme_master`;
CREATE TABLE `scheme_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `scheme_name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`scheme_master`
--

/*!40000 ALTER TABLE `scheme_master` DISABLE KEYS */;
INSERT INTO `scheme_master` (`id`,`scheme_name`) VALUES 
 (1,'Scheme 1'),
 (2,'Scheme 2');
/*!40000 ALTER TABLE `scheme_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`sewer_size`
--

DROP TABLE IF EXISTS `sewer_size`;
CREATE TABLE `sewer_size` (
  `id` bigint(20) NOT NULL auto_increment,
  `sewer_size` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`sewer_size`
--

/*!40000 ALTER TABLE `sewer_size` DISABLE KEYS */;
INSERT INTO `sewer_size` (`id`,`sewer_size`) VALUES 
 (3,'100'),
 (4,'150'),
 (5,'200'),
 (6,'250'),
 (7,'300'),
 (31,'450');
/*!40000 ALTER TABLE `sewer_size` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`sib_entry`
--

DROP TABLE IF EXISTS `sib_entry`;
CREATE TABLE `sib_entry` (
  `id` bigint(20) NOT NULL auto_increment,
  `sib_id` bigint(20) default NULL,
  `so_no` varchar(255) default NULL,
  `so_date` timestamp NULL default NULL,
  `demand_date` timestamp NULL default NULL,
  `dir` varchar(255) default NULL,
  `div_name` varchar(255) default NULL,
  `inv_no` bigint(20) default NULL,
  `sib_date` timestamp NULL default NULL,
  `sib_no` varchar(255) default NULL,
  `ir_date` timestamp NULL default NULL,
  `ir_no` varchar(255) default NULL,
  `vendor_code` varchar(255) default NULL,
  `remarks` varchar(255) default NULL,
  `to_user` timestamp NULL default NULL,
  `from_user` timestamp NULL default NULL,
  `status` int(11) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `dc_no` varchar(255) default NULL,
  `dc_date` timestamp NULL default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`sib_entry`
--

/*!40000 ALTER TABLE `sib_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `sib_entry` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`status_master`
--

DROP TABLE IF EXISTS `status_master`;
CREATE TABLE `status_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `status` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`status_master`
--

/*!40000 ALTER TABLE `status_master` DISABLE KEYS */;
INSERT INTO `status_master` (`id`,`status`,`description`) VALUES 
 (1,'DISABLED','GENERAL'),
 (2,'ENABLED','GENERAL'),
 (3,'PENDING','WORKFLOW'),
 (4,'PROCESSING','WORKFLOW'),
 (5,'APPROVED','WORKFLOW'),
 (6,'DELEGATED','WORKFLOW'),
 (7,'DECLINED','WORKFLOW'),
 (8,'ESCALATED','WORKFLOW'),
 (9,'COMPLETED','WORKFLOW'),
 (10,'CANCELLED','WORKFLOW'),
 (11,'MANUAL','WORKFLOW'),
 (12,'AUTOMATIC','WORKFLOW'),
 (13,'RETIRED','EMPLOYEE STATUS'),
 (14,'TRANSFERED','EMPLOYEE STATUS'),
 (15,'RESIGNED','EMPLOYEE STATUS'),
 (16,'DEATH','EMPLOYEE STATUS');
/*!40000 ALTER TABLE `status_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`street_master`
--

DROP TABLE IF EXISTS `street_master`;
CREATE TABLE `street_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `street_name` varchar(255) default NULL,
  `street_code` varchar(255) default NULL,
  `zone_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_streetmaster_zonemaster_id` (`zone_master_id`),
  CONSTRAINT `fk_streetmaster_zonemaster_id` FOREIGN KEY (`zone_master_id`) REFERENCES `zone_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`street_master`
--

/*!40000 ALTER TABLE `street_master` DISABLE KEYS */;
INSERT INTO `street_master` (`id`,`street_name`,`street_code`,`zone_master_id`) VALUES 
 (1,'Street1','StreetCode1',1),
 (2,'Street2','StreetCode2',1),
 (3,'Street3','StreetCode3',2),
 (4,'Street4','StreetCode4',2),
 (5,'Street5','StreetCode5',3),
 (6,'Street6','StreetCode6',3),
 (7,'Street7','StreetCode7',4),
 (8,'Street8','StreetCode8',4);
/*!40000 ALTER TABLE `street_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`sub_desig_category_master`
--

DROP TABLE IF EXISTS `sub_desig_category_master`;
CREATE TABLE `sub_desig_category_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `description` varchar(255) default NULL,
  `alias` varchar(255) default NULL,
  `order_by` int(11) default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_subdesigcategorymaster_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_subdesigcategorymaster_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`sub_desig_category_master`
--

/*!40000 ALTER TABLE `sub_desig_category_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_desig_category_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`tariff_category_master`
--

DROP TABLE IF EXISTS `tariff_category_master`;
CREATE TABLE `tariff_category_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `tariff_category` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`tariff_category_master`
--

/*!40000 ALTER TABLE `tariff_category_master` DISABLE KEYS */;
INSERT INTO `tariff_category_master` (`id`,`tariff_category`) VALUES 
 (1,'Domestic'),
 (2,'Institutional'),
 (3,'Commercial'),
 (4,'Industrial'),
 (5,'Kiosks');
/*!40000 ALTER TABLE `tariff_category_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`tariff_charges`
--

DROP TABLE IF EXISTS `tariff_charges`;
CREATE TABLE `tariff_charges` (
  `id` bigint(20) NOT NULL auto_increment,
  `tariff_desc` varchar(255) NOT NULL,
  `slab_min` int(11) NOT NULL,
  `slab_max` int(11) NOT NULL,
  `rate` float NOT NULL,
  `min_kl` float NOT NULL,
  `min_unmetered_kl` float NOT NULL,
  `tariff_master_id` bigint(20) default NULL,
  `tariff_type_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_tariffcharges_tariffmaster_id` (`tariff_master_id`),
  KEY `fk_tariffcharges_tarifftypemaster_id` (`tariff_type_master_id`),
  CONSTRAINT `fk_tariffcharges_tariffmaster_id` FOREIGN KEY (`tariff_master_id`) REFERENCES `tariff_master` (`id`),
  CONSTRAINT `fk_tariffcharges_tarifftypemaster_id` FOREIGN KEY (`tariff_type_master_id`) REFERENCES `tariff_type_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`tariff_charges`
--

/*!40000 ALTER TABLE `tariff_charges` DISABLE KEYS */;
INSERT INTO `tariff_charges` (`id`,`tariff_desc`,`slab_min`,`slab_max`,`rate`,`min_kl`,`min_unmetered_kl`,`tariff_master_id`,`tariff_type_master_id`) VALUES 
 (1,'Domestic - Usage',0,999999,780,11,31,1,1),
 (2,'Domestic - Fixed',0,999999,18000,0,0,1,2),
 (3,'Domestic - Service',0,999999,1800,0,0,1,3),
 (4,'Domestic - Usage',0,999999,780,11,32,2,1),
 (5,'Domestic - Fixed',0,999999,19000,0,0,2,2),
 (6,'Domestic - Service',0,999999,1800,0,0,2,3),
 (7,'Domestic - Usage',0,999999,820,12,33,3,1),
 (8,'Domestic - Fixed',0,999999,19500,0,0,3,2),
 (9,'Domestic - Service',0,999999,1820,0,0,3,3);
/*!40000 ALTER TABLE `tariff_charges` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`tariff_master`
--

DROP TABLE IF EXISTS `tariff_master`;
CREATE TABLE `tariff_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `tariff_name` varchar(255) NOT NULL,
  `valid_from` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `valid_to` timestamp NOT NULL default '0000-00-00 00:00:00',
  `active` varchar(255) NOT NULL,
  `tariff_category_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_tariffmaster_tariffcategorymaster_id` (`tariff_category_master_id`),
  CONSTRAINT `fk_tariffmaster_tariffcategorymaster_id` FOREIGN KEY (`tariff_category_master_id`) REFERENCES `tariff_category_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`tariff_master`
--

/*!40000 ALTER TABLE `tariff_master` DISABLE KEYS */;
INSERT INTO `tariff_master` (`id`,`tariff_name`,`valid_from`,`valid_to`,`active`,`tariff_category_master_id`) VALUES 
 (1,'Domestic - 2010 to 2015','2010-01-01 00:00:00','2015-12-31 00:00:00','1',1),
 (2,'Domestic - 2016 Jan to Mar','2016-01-01 00:00:00','2016-03-31 00:00:00','1',1),
 (3,'Domestic - 2016 Apr to  June','2016-04-01 00:00:00','2016-06-30 00:00:00','1',1),
 (4,'Domestic - 2016 Jul to Dec','2016-07-01 00:00:00','2016-12-31 00:00:00','1',1);
/*!40000 ALTER TABLE `tariff_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`tariff_type_master`
--

DROP TABLE IF EXISTS `tariff_type_master`;
CREATE TABLE `tariff_type_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `tariff_type` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`tariff_type_master`
--

/*!40000 ALTER TABLE `tariff_type_master` DISABLE KEYS */;
INSERT INTO `tariff_type_master` (`id`,`tariff_type`) VALUES 
 (1,'Usage Charges'),
 (2,'Fixed Charges'),
 (3,'Service Charges');
/*!40000 ALTER TABLE `tariff_type_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`terminal`
--

DROP TABLE IF EXISTS `terminal`;
CREATE TABLE `terminal` (
  `id` bigint(20) NOT NULL auto_increment,
  `amount` float default NULL,
  `status` varchar(255) default NULL,
  `user_id` varchar(255) default NULL,
  `mr_code` varchar(255) default NULL,
  `sec_code` varchar(255) default NULL,
  `div_code` varchar(255) default NULL,
  `sec_name` varchar(255) default NULL,
  `user_name` varchar(255) default NULL,
  `mobile_no` varchar(255) default NULL,
  `ver` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`terminal`
--

/*!40000 ALTER TABLE `terminal` DISABLE KEYS */;
INSERT INTO `terminal` (`id`,`amount`,`status`,`user_id`,`mr_code`,`sec_code`,`div_code`,`sec_name`,`user_name`,`mobile_no`,`ver`) VALUES 
 (1,1111,'Status1','UserId1','MrCode1','SecCode1','DivCode1','SecName1','UserName1','MobileNo1','Ver1');
/*!40000 ALTER TABLE `terminal` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`terminal_log`
--

DROP TABLE IF EXISTS `terminal_log`;
CREATE TABLE `terminal_log` (
  `id` bigint(20) NOT NULL auto_increment,
  `amount` float default NULL,
  `last_modified` timestamp NULL default NULL,
  `modified_by` varchar(255) default NULL,
  `user_id` varchar(255) default NULL,
  `bank_deposit_date` date default NULL,
  `before_update` varchar(255) default NULL,
  `after_update` varchar(255) default NULL,
  `mr_code` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  `txn_type` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`terminal_log`
--

/*!40000 ALTER TABLE `terminal_log` DISABLE KEYS */;
INSERT INTO `terminal_log` (`id`,`amount`,`last_modified`,`modified_by`,`user_id`,`bank_deposit_date`,`before_update`,`after_update`,`mr_code`,`remark`,`txn_type`) VALUES 
 (2,1222,'2016-03-16 00:00:00','mohib',NULL,'2016-03-16',NULL,NULL,NULL,NULL,NULL),
 (3,12,'2016-03-16 00:00:00','111','111','2016-03-16','11','11','11',NULL,NULL),
 (4,2222,'2016-03-18 00:00:00','ModifiedBy2','UserId2','2016-03-18','BeforeUpdate2','AfterUpdate2','MrCode2','Remark2','TxnType2');
/*!40000 ALTER TABLE `terminal_log` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`transaction_type_master`
--

DROP TABLE IF EXISTS `transaction_type_master`;
CREATE TABLE `transaction_type_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `type_of_txn` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`transaction_type_master`
--

/*!40000 ALTER TABLE `transaction_type_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_type_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`uom`
--

DROP TABLE IF EXISTS `uom`;
CREATE TABLE `uom` (
  `id` bigint(20) NOT NULL auto_increment,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`uom`
--

/*!40000 ALTER TABLE `uom` DISABLE KEYS */;
/*!40000 ALTER TABLE `uom` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`url`
--

DROP TABLE IF EXISTS `url`;
CREATE TABLE `url` (
  `id` bigint(20) NOT NULL auto_increment,
  `url_pattern` varchar(255) NOT NULL,
  `version` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`url`
--

/*!40000 ALTER TABLE `url` DISABLE KEYS */;
INSERT INTO `url` (`id`,`url_pattern`,`version`) VALUES 
 (1,'/modules',1),
 (2,'/applicationTxns',1),
 (3,'/menuItems',1),
 (4,'/urls',1),
 (5,'/menuItem2Urls',1),
 (6,'/module2MenuItems',1),
 (7,'/url2Roles',1),
 (8,'/applicationTxns/new',1),
 (9,'/manageCashPoints',1),
 (10,'/feasibilityStudys',1),
 (11,'/proceedingss',1),
 (12,'/proceedings-dialog',1),
 (13,'/itemCategoryMaster',1),
 (14,'/itemSubCategoryMaster',1),
 (15,'/itemCodeMaster',1),
 (16,'/itemCompanyMaster',1),
 (17,'/itemSubCodeMaster',1),
 (18,'/materialMaster',1),
 (19,'/sibEntry',1),
 (20,'/billOfMaterials',1),
 (21,'/accessLists',1),
 (22,'/billFullDetailss',1),
 (23,'/collDetailss',1),
 (24,'/currentUserss',1),
 (25,'/custDetailss',1),
 (26,'/terminals',1),
 (27,'/terminalLogs',1),
 (28,'/versions',1),
 (29,'/complaintTypeMasters',1),
 (30,'/customerComplaintss',1),
 (31,'/billDetailss/new',1);
/*!40000 ALTER TABLE `url` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`url2_role`
--

DROP TABLE IF EXISTS `url2_role`;
CREATE TABLE `url2_role` (
  `id` bigint(20) NOT NULL auto_increment,
  `url_id` bigint(20) default NULL,
  `authority_name` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_url2role_url_id` (`url_id`),
  KEY `fk_url2role_authority_name` (`authority_name`),
  CONSTRAINT `fk_url2role_authority_name` FOREIGN KEY (`authority_name`) REFERENCES `jhi_authority` (`name`),
  CONSTRAINT `fk_url2role_url_id` FOREIGN KEY (`url_id`) REFERENCES `url` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`url2_role`
--

/*!40000 ALTER TABLE `url2_role` DISABLE KEYS */;
INSERT INTO `url2_role` (`id`,`url_id`,`authority_name`) VALUES 
 (1,1,'ROLE_ADMIN'),
 (2,2,'ROLE_ADMIN'),
 (3,8,'ROLE_CUSTOMER'),
 (4,3,'ROLE_ADMIN'),
 (5,4,'ROLE_ADMIN'),
 (6,5,'ROLE_ADMIN'),
 (7,6,'ROLE_ADMIN'),
 (8,7,'ROLE_ADMIN'),
 (9,8,'ROLE_ADMIN'),
 (11,9,'ROLE_ADMIN'),
 (12,9,'ROLE_ADMIN'),
 (13,10,'ROLE_ADMIN'),
 (14,11,'ROLE_ADMIN'),
 (15,8,'ROLE_ADMIN'),
 (16,2,'ROLE_USER'),
 (17,8,'ROLE_USER'),
 (18,10,'ROLE_USER'),
 (19,11,'ROLE_USER'),
 (20,12,'ROLE_ADMIN'),
 (21,13,'ROLE_ADMIN'),
 (22,14,'ROLE_ADMIN'),
 (23,15,'ROLE_ADMIN'),
 (24,16,'ROLE_ADMIN'),
 (25,17,'ROLE_ADMIN'),
 (26,18,'ROLE_ADMIN'),
 (27,19,'ROLE_ADMIN'),
 (28,20,'ROLE_USER'),
 (29,21,'ROLE_ADMIN'),
 (30,22,'ROLE_ADMIN'),
 (31,23,'ROLE_ADMIN'),
 (32,24,'ROLE_ADMIN'),
 (33,25,'ROLE_ADMIN'),
 (34,26,'ROLE_ADMIN'),
 (35,27,'ROLE_ADMIN'),
 (36,28,'ROLE_ADMIN'),
 (37,29,'ROLE_ADMIN'),
 (38,30,'ROLE_ADMIN'),
 (39,30,'ROLE_CUSTOMER'),
 (40,31,'ROLE_ADMIN');
/*!40000 ALTER TABLE `url2_role` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`version`
--

DROP TABLE IF EXISTS `version`;
CREATE TABLE `version` (
  `id` bigint(20) NOT NULL auto_increment,
  `version_low` varchar(255) default NULL,
  `version_high` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`version`
--

/*!40000 ALTER TABLE `version` DISABLE KEYS */;
INSERT INTO `version` (`id`,`version_low`,`version_high`) VALUES 
 (1,'1','533'),
 (2,'1','19'),
 (6,'11','33');
/*!40000 ALTER TABLE `version` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`workflow`
--

DROP TABLE IF EXISTS `workflow`;
CREATE TABLE `workflow` (
  `id` bigint(20) NOT NULL auto_increment,
  `stage_id` int(11) default NULL,
  `workflow_master_id` bigint(20) default NULL,
  `relative_from_role_id` bigint(20) default NULL,
  `absolute_from_role_id` bigint(20) default NULL,
  `relationship_type_id` bigint(20) default NULL,
  `relative_to_role_id` bigint(20) default NULL,
  `absolute_to_role_id` bigint(20) default NULL,
  `escalation_relationship_type_id` bigint(20) default NULL,
  `relative_escalation_to_id` bigint(20) default NULL,
  `absolute_escalation_to_id` bigint(20) default NULL,
  `workflow_stage_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_workflow_workflowmaster_id` (`workflow_master_id`),
  KEY `fk_workflow_relativefromrole_id` (`relative_from_role_id`),
  KEY `fk_workflow_absolutefromrole_id` (`absolute_from_role_id`),
  KEY `fk_workflow_relationshiptype_id` (`relationship_type_id`),
  KEY `fk_workflow_relativetorole_id` (`relative_to_role_id`),
  KEY `fk_workflow_absolutetorole_id` (`absolute_to_role_id`),
  KEY `fk_workflow_escalationrelationshiptype_id` (`escalation_relationship_type_id`),
  KEY `fk_workflow_relativeescalationto_id` (`relative_escalation_to_id`),
  KEY `fk_workflow_absoluteescalationto_id` (`absolute_escalation_to_id`),
  KEY `fk_workflow_workflowstagemaster_id` (`workflow_stage_master_id`),
  CONSTRAINT `fk_workflow_absoluteescalationto_id` FOREIGN KEY (`absolute_escalation_to_id`) REFERENCES `org_role_instance` (`id`),
  CONSTRAINT `fk_workflow_absolutefromrole_id` FOREIGN KEY (`absolute_from_role_id`) REFERENCES `org_role_instance` (`id`),
  CONSTRAINT `fk_workflow_absolutetorole_id` FOREIGN KEY (`absolute_to_role_id`) REFERENCES `org_role_instance` (`id`),
  CONSTRAINT `fk_workflow_escalationrelationshiptype_id` FOREIGN KEY (`escalation_relationship_type_id`) REFERENCES `workflow_relationships` (`id`),
  CONSTRAINT `fk_workflow_relationshiptype_id` FOREIGN KEY (`relationship_type_id`) REFERENCES `workflow_relationships` (`id`),
  CONSTRAINT `fk_workflow_relativeescalationto_id` FOREIGN KEY (`relative_escalation_to_id`) REFERENCES `workflow_relations` (`id`),
  CONSTRAINT `fk_workflow_relativefromrole_id` FOREIGN KEY (`relative_from_role_id`) REFERENCES `workflow_relations` (`id`),
  CONSTRAINT `fk_workflow_relativetorole_id` FOREIGN KEY (`relative_to_role_id`) REFERENCES `workflow_relations` (`id`),
  CONSTRAINT `fk_workflow_workflowmaster_id` FOREIGN KEY (`workflow_master_id`) REFERENCES `workflow_master` (`id`),
  CONSTRAINT `fk_workflow_workflowstagemaster_id` FOREIGN KEY (`workflow_stage_master_id`) REFERENCES `workflow_stage_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`workflow`
--

/*!40000 ALTER TABLE `workflow` DISABLE KEYS */;
INSERT INTO `workflow` (`id`,`stage_id`,`workflow_master_id`,`relative_from_role_id`,`absolute_from_role_id`,`relationship_type_id`,`relative_to_role_id`,`absolute_to_role_id`,`escalation_relationship_type_id`,`relative_escalation_to_id`,`absolute_escalation_to_id`,`workflow_stage_master_id`) VALUES 
 (1,1,1,NULL,NULL,2,NULL,10,NULL,NULL,24,4),
 (2,2,1,NULL,10,2,NULL,24,NULL,NULL,NULL,5),
 (3,3,1,NULL,24,2,NULL,15,NULL,NULL,NULL,2),
 (4,4,1,NULL,15,2,NULL,10,NULL,NULL,NULL,2),
 (5,5,1,NULL,10,2,NULL,22,NULL,NULL,NULL,NULL),
 (6,6,1,NULL,22,2,NULL,9,NULL,NULL,NULL,NULL),
 (7,7,1,NULL,9,2,NULL,15,NULL,NULL,NULL,NULL),
 (8,8,1,NULL,15,2,NULL,16,NULL,NULL,NULL,NULL),
 (9,1,4,NULL,NULL,2,NULL,15,NULL,NULL,NULL,4),
 (10,2,4,NULL,15,2,NULL,12,NULL,NULL,NULL,5),
 (11,3,4,NULL,12,2,NULL,4,NULL,NULL,NULL,5),
 (12,4,4,NULL,4,2,NULL,16,NULL,NULL,NULL,5);
/*!40000 ALTER TABLE `workflow` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`workflow_master`
--

DROP TABLE IF EXISTS `workflow_master`;
CREATE TABLE `workflow_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `workflow_name` varchar(255) NOT NULL,
  `to_workflow` int(11) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_workflowmaster_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_workflowmaster_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`workflow_master`
--

/*!40000 ALTER TABLE `workflow_master` DISABLE KEYS */;
INSERT INTO `workflow_master` (`id`,`workflow_name`,`to_workflow`,`creation_date`,`last_modified_date`,`status_master_id`) VALUES 
 (1,'REQUISITION',0,'2016-03-18 00:00:00','2016-03-18 00:00:00',2),
 (2,'LEAVE',0,'2016-03-26 00:00:00','2016-03-26 00:00:00',2),
 (3,'CUSTOMER COMPLAINT',0,'2016-03-31 00:00:00','2016-03-31 00:00:00',2),
 (4,'INCORRECT BILL',0,'2016-03-31 00:00:00','2016-03-31 00:00:00',2);
/*!40000 ALTER TABLE `workflow_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`workflow_relations`
--

DROP TABLE IF EXISTS `workflow_relations`;
CREATE TABLE `workflow_relations` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_workflowrelations_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_workflowrelations_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`workflow_relations`
--

/*!40000 ALTER TABLE `workflow_relations` DISABLE KEYS */;
INSERT INTO `workflow_relations` (`id`,`name`,`status_master_id`) VALUES 
 (1,'DIRECTOR',2),
 (3,'PROGRAMME DIRECTOR',2),
 (5,'ASSOCIATE DIRECTOR',2),
 (7,'PROJECT DIRECTOR',2),
 (9,'TECHNICAL DIRECTORATE',2),
 (13,'DIVISION HEAD',2),
 (20,'BOSS',2),
 (21,'BOSSES BOSS',2),
 (22,'ADMIN',2);
/*!40000 ALTER TABLE `workflow_relations` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`workflow_relationships`
--

DROP TABLE IF EXISTS `workflow_relationships`;
CREATE TABLE `workflow_relationships` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_workflowrelationships_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_workflowrelationships_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`workflow_relationships`
--

/*!40000 ALTER TABLE `workflow_relationships` DISABLE KEYS */;
INSERT INTO `workflow_relationships` (`id`,`name`,`status_master_id`) VALUES 
 (1,'Relative',2),
 (2,'Absolute',3);
/*!40000 ALTER TABLE `workflow_relationships` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`workflow_stage_master`
--

DROP TABLE IF EXISTS `workflow_stage_master`;
CREATE TABLE `workflow_stage_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `description` varchar(255) default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_workflowstagemaster_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_workflowstagemaster_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`workflow_stage_master`
--

/*!40000 ALTER TABLE `workflow_stage_master` DISABLE KEYS */;
INSERT INTO `workflow_stage_master` (`id`,`name`,`creation_date`,`last_modified_date`,`description`,`status_master_id`) VALUES 
 (1,'Recommended','2016-03-21 00:00:00','2016-03-21 00:00:00',NULL,2),
 (2,'Approved','2016-03-21 00:00:00','2016-03-21 00:00:00',NULL,2),
 (3,'Sanctioned','2016-03-21 00:00:00','2016-03-21 00:00:00',NULL,2),
 (4,'Waiting','2016-03-21 00:00:00','2016-03-21 00:00:00',NULL,2),
 (5,'Forwarded','2016-03-21 00:00:00','2016-03-21 00:00:00',NULL,2),
 (6,'Completed','2016-03-21 00:00:00','2016-03-21 00:00:00',NULL,2);
/*!40000 ALTER TABLE `workflow_stage_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`workflow_txn_details`
--

DROP TABLE IF EXISTS `workflow_txn_details`;
CREATE TABLE `workflow_txn_details` (
  `id` bigint(20) NOT NULL auto_increment,
  `request_id` int(11) default NULL,
  `reference_number` varchar(255) default NULL,
  `row_number` int(11) default NULL,
  `column_name` varchar(255) default NULL,
  `previous_value` varchar(255) default NULL,
  `new_value` varchar(255) default NULL,
  `ip_address` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `request_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_workflowtxndetails_requestmaster_id` (`request_master_id`),
  CONSTRAINT `fk_workflowtxndetails_requestmaster_id` FOREIGN KEY (`request_master_id`) REFERENCES `request_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`workflow_txn_details`
--

/*!40000 ALTER TABLE `workflow_txn_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_txn_details` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`workflow_type_master`
--

DROP TABLE IF EXISTS `workflow_type_master`;
CREATE TABLE `workflow_type_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `creation_date` timestamp NULL default NULL,
  `last_modified_date` timestamp NULL default NULL,
  `description` varchar(255) default NULL,
  `status_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_workflowtypemaster_statusmaster_id` (`status_master_id`),
  CONSTRAINT `fk_workflowtypemaster_statusmaster_id` FOREIGN KEY (`status_master_id`) REFERENCES `status_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`workflow_type_master`
--

/*!40000 ALTER TABLE `workflow_type_master` DISABLE KEYS */;
INSERT INTO `workflow_type_master` (`id`,`name`,`creation_date`,`last_modified_date`,`description`,`status_master_id`) VALUES 
 (1,'GENERIC','2016-03-26 00:00:00','2016-03-26 00:00:00',NULL,2),
 (2,'ROLE','2016-03-26 00:00:00','2016-03-26 00:00:00',NULL,2);
/*!40000 ALTER TABLE `workflow_type_master` ENABLE KEYS */;


--
-- Table structure for table `watererp`.`zone_master`
--

DROP TABLE IF EXISTS `zone_master`;
CREATE TABLE `zone_master` (
  `id` bigint(20) NOT NULL auto_increment,
  `zone_name` varchar(255) default NULL,
  `zone_code` varchar(255) default NULL,
  `division_master_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_zonemaster_divisionmaster_id` (`division_master_id`),
  CONSTRAINT `fk_zonemaster_divisionmaster_id` FOREIGN KEY (`division_master_id`) REFERENCES `division_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watererp`.`zone_master`
--

/*!40000 ALTER TABLE `zone_master` DISABLE KEYS */;
INSERT INTO `zone_master` (`id`,`zone_name`,`zone_code`,`division_master_id`) VALUES 
 (1,'Zone1','ZoneCode1',1),
 (2,'Zone2','ZoneCode2',1),
 (3,'Zone3','ZoneCode3',2),
 (4,'Zone4','ZoneCode4',2),
 (5,'Zone5','ZoneCode5',3),
 (6,'Zone6','ZoneCode6',3);
/*!40000 ALTER TABLE `zone_master` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
