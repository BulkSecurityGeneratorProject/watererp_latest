#Bill Testing Process

#Load Initial Data
- Initial data script is located at <watererp>\src\test\resources\scripts\initData.sql
- run1.sql is for simulating "New Customer billing"  as mentioned below (Scenarios 1 to 8)
- run2.sql is for simulating "Normal Customer billing" as mentioned below (Scenarios 9 to 13)

This file is run from:
- BillRunMasterResourceIntTest.java
  - createBillRun()
  	- custDetailsCustomRepository.loadTestData("/initData.sql");
  	- POST /api/billRunMasters
  		- BillRunMasterResource.createBillRunMaster()
  			
### Scenario 1: New Customer 02020005, 1 month bill, Days < 15

### Scenario 2: New Customer 04060001, 1 month bill, Days > 15

### Scenario 3: New Customer, 2 months bill, Partial Days First Month > 15

### Scenario 4: New Customer, 2 months bill, Partial Days First Month < 15

### Scenario 5: New Customer, 2 months bill, Tariff Change 2nd Month, Partial Days First Month > 15

### Scenario 6: New Customer, 2 months bill, Tariff Change 2nd Month, Partial Days First Month < 15

### Scenario 7: New Customer, 3 months bill, Tariff Change 3rd Month, Partial Days First Month > 15

### Scenario 8: New Customer, 3 months bill, Tariff Change 3rd Month, Partial Days First Month < 15

### Scenario 9: Normal Customer 05050001, 1 month bill

### Scenario 10: Normal Customer, 2 months bill, Same Tariff

### Scenario 11: Normal Customer, 3 months bill, Same Tariff

### Scenario 12: Normal Customer, 2 months bill, Tariff Change 2nd Month

### Scenario 13: Normal Customer, 3 months bill, Tariff Change 3rd Month


#How to make a new customer from an existing customer
``delete from bill_run_details where can='02020005';``

``delete from bill_details where can='02020005';``

``delete from bill_full_details where can='02020005';``

``update cust_details set prev_Bill_Month=null,arrears=0.0,met_reading_dt=null,lock_charges=0, prev_avg_kl=0.0,met_avg_kl=0.0  where can='02020005';``