;             
CREATE USER IF NOT EXISTS SA SALT '26cc6e1cb6309646' HASH 'ff19308a798172ceaed9d177ed12ed51cbe01b88ed81c32041cc932db5f50221' ADMIN;           
CREATE CACHED TABLE PUBLIC.TRANSPORT(
    TRANPORT_NAME VARCHAR(30),
    CONTACT INT8
);   
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.TRANSPORT;               
CREATE CACHED TABLE PUBLIC.PARTY(
    GST_NO VARCHAR(20) NOT NULL,
    NAME VARCHAR(50),
    ADDRESS VARCHAR(255),
    STATE VARCHAR(30),
    CONTACT INT8,
    PARTY_TABLE VARCHAR(50)
);             
ALTER TABLE PUBLIC.PARTY ADD CONSTRAINT PUBLIC.CONSTRAINT_4 PRIMARY KEY(GST_NO);              
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.PARTY;   
CREATE CACHED TABLE PUBLIC.INVOICE_TABLE(
    INVOICE_NO INT,
    INVOICE_DATE VARCHAR(50),
    PRODUCT_NAME VARCHAR(100),
    HSN_CODE INT,
    RATE FLOAT,
    GST INT,
    QTY INT,
    IGST INT,
    PARTY_NAME VARCHAR(100)
); 
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.INVOICE_TABLE;           
CREATE CACHED TABLE PUBLIC.PRODUCT(
    PRODUCT_CODE VARCHAR(20) NOT NULL,
    PRODUCT_NAME VARCHAR(50),
    RATE FLOAT,
    RATE_PIECE INT,
    HSN_CODE INT,
    TAX_RATE INT
);     
ALTER TABLE PUBLIC.PRODUCT ADD CONSTRAINT PUBLIC.CONSTRAINT_1 PRIMARY KEY(PRODUCT_CODE);      
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.PRODUCT; 