DROP TABLE VISITS cascade constraints;
DROP TABLE PURCHASES cascade constraints;
DROP TABLE RENTALS cascade constraints;
DROP TABLE PROP_FOR_SALE cascade constraints;
DROP TABLE PROP_FOR_RENT cascade constraints;
DROP TABLE PROPERTY cascade constraints;
DROP TABLE CUSTOMER cascade constraints;
DROP TABLE STAFF cascade constraints;
DROP TABLE BRANCH cascade constraints;
DROP TABLE EST_AGENT cascade constraints;
DROP TABLE ADDRESS cascade constraints;

SET ECHO ON
SET VERIFY ON

REM Create Address table:

CREATE TABLE ADDRESS(
    Add_id NUMBER primary key,
    Add_1 VARCHAR(25),
    Add_2 VARCHAR(25),
    Locality VARCHAR(20),
    City VARCHAR(25),
    Country VARCHAR(15),
    Pincode VARCHAR(10)
);

REM Create Estate Agent  table:

CREATE TABLE EST_AGENT(
    Agt_id NUMBER primary key,
    Agt_name VARCHAR(25) NOT NULL CONSTRAINT UNIQ_AGENT_NAME UNIQUE,
    Hq VARCHAR(20) NOT NULL,
    Website VARCHAR(50),
    Agt_phn INTEGER NOT NULL CONSTRAINT UNIQ_AGENT_PHN UNIQUE,
    Add_id NOT NULL REFERENCES ADDRESS(Add_id)
);

REM Create Agents Branch table:

CREATE TABLE BRANCH(
    Br_id NUMBER primary key,
    Br_name VARCHAR(30) NOT NULL,
    Br_phn INTEGER NOT NULL CONSTRAINT UNIQ_BRANCH_PHN UNIQUE,
    Agt_id REFERENCES EST_AGENT(Agt_id),
    Add_id REFERENCES ADDRESS(Add_id),
    Mngr_id INTEGER NOT NULL
);

REM Create Staff table:

CREATE TABLE STAFF(
    Stf_id NUMBER primary key,
    Stf_f_name VARCHAR(25) NOT NULL,
    Stf_l_name VARCHAR(25) NOT NULL,
    Stf_Dob DATE NOT NULL,
    Stf_gend VARCHAR(15) NOT NULL,
    Stf_phn INTEGER NOT NULL,
    Stf_role VARCHAR(20),
    Add_id REFERENCES ADDRESS(Add_id),
    Br_id REFERENCES BRANCH(Br_id)
);

/* Alter BRANCH table and add Manager id from STAFF table 
to avoid error due to circular dependency:*/

ALTER TABLE BRANCH
ADD CONSTRAINT UNIQ_MANAGER FOREIGN KEY(Mngr_id)
REFERENCES STAFF(stf_id);

REM Create Customer table:

CREATE TABLE CUSTOMER(
    Cust_id NUMBER primary key,
    F_name VARCHAR(25) NOT NULL,
    L_name VARCHAR(25) NOT NULL,
    Cust_Dob DATE NOT NULL,
    Cust_gend VARCHAR(15) NOT NULL,
    Cust_phn INTEGER NOT NULL,
    Add_id REFERENCES ADDRESS(Add_id),
    Br_id REFERENCES BRANCH(Br_id)
);

REM Create Property table:

CREATE TABLE PROPERTY(
        Prop_id NUMBER Primary Key,
        Prop_name VARCHAR(30) NOT NULL,
        Furn_type VARCHAR(25) NOT NULL,
        Prop_type VARCHAR(20) NOT NULL,
        Count_bed INTEGER NOT NULL,
        Count_bath INTEGER NOT NULL,
        Prop_desc VARCHAR(100) NOT NULL,
        Prop_status VARCHAR(20) NOT NULL,
        Reg_date DATE NOT NULL,
        prop_size INTEGER NOT NULL,
        Br_id NOT NULL REFERENCES BRANCH(Br_id),
        Landlord NOT NULL REFERENCES CUSTOMER(Cust_id),
        Add_id NOT NULL REFERENCES ADDRESS(Add_id)
);

REM Create Properties for sale table:

CREATE TABLE PROP_FOR_SALE(
    Prop_sale_id NUMBER NOT NULL,
    Prop_id REFERENCES PROPERTY(Prop_id),
    ask_price INTEGER,
    CONSTRAINT PKEY_PROP_SALE Primary key(Prop_sale_id,Prop_id)
);

REM Create Properties for rent table:

CREATE TABLE PROP_FOR_RENT(
    Prop_rent_id NUMBER NOT NULL,
    Prop_id REFERENCES PROPERTY(Prop_id),
    ask_rent_pm INTEGER,
    CONSTRAINT PKEY_PROP_RENT Primary key(Prop_rent_id,Prop_id)
);

REM Create Rental transactions table:

CREATE TABLE RENTALS(
    Rental_id NUMBER NOT NULL,
    Prop_id REFERENCES PROPERTY(Prop_id),
    Ten_start_date DATE,
    Ten_end_date DATE,
    adv_paid INTEGER NOT NULL,
    agr_rent_pm INTEGER NOT NULL,
    rent_comm INTEGER NOT NULL,
    Landlord REFERENCES CUSTOMER(Cust_id),
    Tenant REFERENCES CUSTOMER(Cust_id),
    CONSTRAINT PKEY_RENTAL Primary key(Rental_id,Prop_id),
    Constraint end_date_check CHECK(Ten_end_date >Ten_start_date)
);
REM ALTER TABLE RENTALS ADD Constraint end_date_check CHECK(Ten_end_date >Ten_start_date);

REM Create Purchase transactions table:

CREATE TABLE PURCHASES(
    Purchase_id NUMBER NOT NULL,
    Prop_id REFERENCES PROPERTY(Prop_id),
    Purch_date DATE,
    Stamp_duty INTEGER NOT NULL,
    Sell_price INTEGER NOT NULL,
    Sell_comm INTEGER NOT NULL,
    Buyer REFERENCES CUSTOMER(Cust_id),
    Seller REFERENCES CUSTOMER(Cust_id),
    CONSTRAINT PKEY_PURCH Primary key(Purchase_id,Prop_id)
);

REM Create Visit Transactions table:

CREATE TABLE VISITS(
    Visit_id NUMBER NOT NULL,
    Prop_id REFERENCES PROPERTY(Prop_id),
    Comments VARCHAR(100),
    Date_time DATE NOT NULL,
    Customer REFERENCES CUSTOMER(Cust_id),
    Landlord REFERENCES CUSTOMER(Cust_id),
    CONSTRAINT PKEY_VISIT Primary key(Visit_id,Prop_id)
);
