CREATE DATABASE CCDB;


USE CCDB;


CREATE TABLE CC_DETAIL (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

SELECT * FROM CC_DETAIL;

SELECT  COUNT(*) FROM CC_DETAIL;


SELECT
   Client_Num IS  NULL,
    Card_Category IS NULL,
    Annual_Fees IS NULL,
    Activation_30_Days IS NULL,
    Customer_Acq_Cost IS NULL,
    Week_Start_Date IS NULL,
    Week_Num IS NULL,
    Qtr IS NULL,
    current_year IS NULL,
    Credit_Limit IS NULL,
    Total_Revolving_Bal IS NULL,
    Total_Trans_Amt IS NULL,
    Total_Trans_Ct IS NULL,
    Avg_Utilization_Ratio IS NULL,
    Use_Chip IS NULL,
    Exp_Type IS NULL,
    Interest_Earned IS NULL,
    Delinquent_Acc IS NULL
FROM CC_DETAIL;




CREATE TABLE CUST_DETAIL (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);



SELECT
    Client_Num IS NULL,
    Customer_Age IS NULL,
    Gender IS NULL,
    Dependent_Count IS NULL,
    Education_Level IS NULL,
    Marital_Status IS NULL,
    State_cd IS NULL,
    Zipcode IS NULL,
    Car_Owner IS NULL,
    House_Owner IS NULL,
    Personal_Loan IS NULL,
    Contact IS NULL,
    Customer_Job IS NULL,
    Income IS NULL,
    Cust_Satisfaction_Score IS NULL
FROM CUST_DETAIL;

DESCRIBE CUST_DETAIL;

SELECT * FROM CUST_DETAIL;

SELECT COUNT(Customer_Age) FROM CUST_DETAIL;




SET GLOBAL LOCAL_INFILE=ON;
LOAD DATA LOCAL INFILE '‪C:/Users/kshit/Downloads/Credit_Card_Financial_Dashboard-main/Credit_Card_Financial_Dashboard-main/credit_card.csv' INTO TABLE cc_detail 
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;


SET GLOBAL LOCAL_INFILE=ON;
LOAD DATA LOCAL INFILE '"C:/Users/kshit/Downloads/Credit_Card_Financial_Dashboard-main/Credit_Card_Financial_Dashboard-main/customer.csv"' INTO TABLE cc_detail 
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES


