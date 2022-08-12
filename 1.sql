CREATE DATABASE BANK;
use BANK;

CREATE TABLE CLIENTS 
                (ID integer(10) NOT NULL,
                NAME VARCHAR(1000),
                PLACE_OF_BIRTH VARCHAR(1000), 
                DATE_OF_BIRTH DATE, 
                ADDRESS VARCHAR(1000), 
                PASSPORT VARCHAR(100), 
                PRIMARY KEY (ID));
                
CREATE TABLE TARIFS
                (ID integer(10) NOT NULL,
                NAME VARCHAR(100), 
                COST DECIMAL(10,2), 
                PRIMARY KEY (ID));
                
CREATE TABLE PRODUCT_TYPE 
                (ID integer(10) NOT NULL, 
                NAME VARCHAR(100), 
                BEGIN_DATE DATE, 
                END_DATE DATE, 
                TARIF_REF integer(10), 
                FOREIGN KEY (TARIF_REF) references TARIFS (ID), 
                PRIMARY KEY (ID));
                
CREATE TABLE PRODUCTS 
                (ID integer(10) NOT NULL, 
                PRODUCT_TYPE_ID integer(10) NOT NULL, 
                NAME VARCHAR(100), 
                CLIENT_REF integer(10) NOT NULL, 
                OPEN_DATE DATE,
                CLOSE_DATE DATE, 
                FOREIGN KEY (CLIENT_REF) references CLIENTS (ID), 
                FOREIGN KEY (PRODUCT_TYPE_ID) references PRODUCT_TYPE (ID), 
                PRIMARY KEY (ID));

CREATE TABLE ACCOUNTS 
                (ID integer(10) NOT NULL, 
                NAME VARCHAR(100), 
                SALDO DECIMAL(10,2), 
			    CLIENT_REF integer(10), 
			    OPEN_DATE DATE, 
                CLOSE_DATE DATE, 
                PRODUCT_REF integer(10), 
                ACC_NUM VARCHAR(100), 
                FOREIGN KEY (CLIENT_REF) references CLIENTS (ID), 
                FOREIGN KEY (PRODUCT_REF) references PRODUCTS (ID), 
                PRIMARY KEY (ID));                

CREATE TABLE RECORDS 
                (ID integer(10) NOT NULL, 
                DT integer(1), 
                SUM DECIMAL(10,2), 
                ACC_REF integer(10), 
                OPER_DATE DATE, 
                FOREIGN KEY (ACC_REF) references ACCOUNTS (ID), 
                PRIMARY KEY (ID));