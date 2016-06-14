### Scenario 9: Normal Customer 02020005, 1 month bill, Same Tariff

### Scenario 10: Normal Customer 08090001, 1 month bill, Same Tariff

### Scenario 11: Normal Customer 04060001, 1 month bill, Same Tariff, Door Lock

### Scenario 12: Normal Customer 05050001, 1 month bill, Same Tariff, Door Lock

### Scenario 13: Normal Customer 04060002, 1 month bill, Same Tariff

### Scenario 14: Normal Customer 04060003, 1 month bill, Same Tariff, Door Lock

### Scenario 15: Normal Customer 04060004, 1 month bill, Same Tariff

### Scenario 16: Normal Customer 05050002, 1 month bill, Same Tariff


delete from bill_run_details where bill_details_id between 80 and 87;

delete from bill_details where id between 80 and 87;

INSERT INTO `bill_details` (`id`,`can`,`bill_number`,`bill_date`,`bill_time`,`meter_make`,`current_bill_type`,`from_month`,`to_month`,`meter_fix_date`,`initial_reading`,`present_reading`,`units`,`water_cess`,`sewerage_cess`,`service_charge`,`meter_service_charge`,`total_amount`,`net_payable_amount`,`telephone_no`,`meter_status`,`met_reader_code`,`bill_flag`,`svr_status`,`terminal_id`,`meter_reader_id`,`user_id`,`mobile_no`,`notice_no`,`lat`,`longi`,`no_meter_amt`,`met_reading_dt`,`is_rounding`,`insert_dt`,`status`,`mtr_reader_id`) VALUES  (80,'02020005',NULL,'2016-05-01',NULL,NULL,'M','201605','201605',NULL,18,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-27','\0','2016-06-01 16:09:21','INITIATED',10), (81,'08090001',NULL,'2016-05-01',NULL,NULL,'M','201605','201605',NULL,21,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-28','\0','2016-06-01 16:34:25','INITIATED',15),(82,'04060001',NULL,'2016-05-01',NULL,NULL,'L','201605','201605',NULL,22,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-30','\0','2016-06-01 16:35:15','INITIATED',14);
INSERT INTO `bill_details` (`id`,`can`,`bill_number`,`bill_date`,`bill_time`,`meter_make`,`current_bill_type`,`from_month`,`to_month`,`meter_fix_date`,`initial_reading`,`present_reading`,`units`,`water_cess`,`sewerage_cess`,`service_charge`,`meter_service_charge`,`total_amount`,`net_payable_amount`,`telephone_no`,`meter_status`,`met_reader_code`,`bill_flag`,`svr_status`,`terminal_id`,`meter_reader_id`,`user_id`,`mobile_no`,`notice_no`,`lat`,`longi`,`no_meter_amt`,`met_reading_dt`,`is_rounding`,`insert_dt`,`status`,`mtr_reader_id`) VALUES  (83,'05050001',NULL,'2016-05-01',NULL,NULL,'L','201605','201605',NULL,25,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-30','\0','2016-06-01 17:21:03','INITIATED',15), (84,'04060002',NULL,'2016-05-01',NULL,NULL,'M','201605','201605',NULL,41,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-28','\0','2016-06-01 17:21:32','INITIATED',17), (85,'04060003',NULL,'2016-05-01',NULL,NULL,'L','201605','201605',NULL,42,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-29','\0','2016-06-01 17:33:00','INITIATED',15);
INSERT INTO `bill_details` (`id`,`can`,`bill_number`,`bill_date`,`bill_time`,`meter_make`,`current_bill_type`,`from_month`,`to_month`,`meter_fix_date`,`initial_reading`,`present_reading`,`units`,`water_cess`,`sewerage_cess`,`service_charge`,`meter_service_charge`,`total_amount`,`net_payable_amount`,`telephone_no`,`meter_status`,`met_reader_code`,`bill_flag`,`svr_status`,`terminal_id`,`meter_reader_id`,`user_id`,`mobile_no`,`notice_no`,`lat`,`longi`,`no_meter_amt`,`met_reading_dt`,`is_rounding`,`insert_dt`,`status`,`mtr_reader_id`) VALUES  (86,'04060004',NULL,'2016-05-01',NULL,NULL,'M','201605','201605',NULL,43,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-30','\0','2016-06-01 17:33:34','INITIATED',15), (87,'05050002',NULL,'2016-05-01',NULL,NULL,'M','201605','201605',NULL,60,68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-29','\0','2016-06-01 17:39:55','INITIATED',14);


#Preparation for Run 3: Before posting online Payments
delete FROM `online_payment_response` where id between 10 and 15;
delete FROM `online_payment_response` where online_payment_order_id between 10 and 15;
delete FROM `online_payment_callback` where online_payment_order_id between 10 and 15;
delete FROM `online_payment_order` where id between 10 and 15;

INSERT INTO `online_payment_order` (`id`,`service_code`,`amount`,`pay_by`,`user_defined_field`,`email`,`phone`,`order_time`,`merchant_master_id`) VALUES (10,'TESTS001',1600.0,'TIGOPESADIR','02020005','test@gmail.com',1234567890,'2016-05-02 22:17:25',2),(11,'TESTS001',500.0,'TIGOPESADIR','08090001','test@gmail.com',1234567890,'2016-05-02 22:17:25',2),(12,'TESTS001',1000.0,'TIGOPESADIR','04060001','test@gmail.com',123456789,'2016-05-03 13:53:56',2),(13,'TESTS001',10000.0,'TIGOPESADIR','04060003','test@gmail.com',123456789,'2016-05-03 15:08:13',2),(14,'TESTS001',6500.0,'TIGOPESADIR','04060004','test@gmail.com',1234567890,'2016-05-03 15:10:47',2);
INSERT INTO `online_payment_response` (`id`,`response_code`,`response_time`,`redirect_url`,`merchant_txn_ref`,`online_payment_order_id`) VALUES  (10,'100','2016-05-03 22:35:46','http://crystal.tekmindz.com:80/maxcompp/directpaymentreceipt.xhtml?txnref=6828618857&name=null&paymentmode=TIGOPESADIR','600',10),(11,'100','2016-05-03 22:35:46','http://crystal.tekmindz.com:80/maxcompp/directpaymentreceipt.xhtml?txnref=6828618857&name=null&paymentmode=TIGOPESADIR','700',11), (12,'100','2016-05-10 19:06:36','http://crystal.tekmindz.com:80/maxcompp/directpaymentreceipt.xhtml?txnref=6869048643&name=null&paymentmode=TIGOPESADIR','800',12), (13,'100','2016-05-10 10:31:34','http://crystal.tekmindz.com:80/maxcompp/directpaymentreceipt.xhtml?txnref=4557988987&name=null&paymentmode=TIGOPESADIR','900',13), (14,'100','2016-05-10 19:06:36','http://crystal.tekmindz.com:80/maxcompp/directpaymentreceipt.xhtml?txnref=6869048643&name=null&paymentmode=TIGOPESADIR','1000',14);
