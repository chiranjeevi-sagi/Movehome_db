REM *************** query 1 ***************************
SET linesize 85;
TTITLE SKIP 4 CENTER 'LIST OF SEMI-DETACHED PROPERTIES WITH MIN 3 BEDROOMS FOR SALE ADDED IN LAST 22 DAYS' SKIP 1 CENTER '====================================================================================' SKIP 2
SET RECSEP WRAPPED
SET RECSEPCHAR "-"
SET UNDERLINE = ;
COLUMN Prop_name FORMAT a13;
COLUMN Locality FORMAT a10;
COLUMN Prop_status FORMAT A10;
COLUMN Prop_type FORMAT A13;
COLUMN City FORMAT A10;
COLUMN Prop_name HEADING 'PROPERTY|NAME';
COLUMN Count_bed HEADING 'NO.OF|BEDS';
COLUMN Prop_type HEADING 'PROPERTY|TYPE';
COLUMN Prop_status HEADING 'STATUS';
COLUMN Reg_date HEADING 'REGISTRATION|DATE';


SELECT P.Prop_name, p.Prop_type, P.Prop_status, P.Count_bed, A.Locality, A.City, P.Reg_date
FROM PROPERTY P, ADDRESS A, CUSTOMER C
WHERE P.Add_id=A.Add_id and P.Landlord=C.Cust_id and P.Reg_date> '10-JUL-2022';

REM ***************************************************

REM **************** Query 2 **************************

SET linesize 75;
TTITLE SKIP 4 CENTER 'LIST OF PROPERTIES SOLD IN 2019 AND 2020' SKIP 1 CENTER '=============================================' SKIP 2
SET RECSEP WRAPPED
SET RECSEPCHAR "-"
SET UNDERLINE =;
COLUMN Prop_name FORMAT A15;
COLUMN Locality FORMAT A10;
COLUMN City FORMAT A10;
COLUMN F_name FORMAT A10;
COLUMN Prop_name HEADING'PROPERTY NAME';
COLUMN Purch_date HEADING 'PURCHASE DATE';
COLUMN Sell_price HEADING 'SELLING PRICE';
COLUMN F_name HEADING 'BUYER';
SELECT P.Prop_name, P1.Sell_price, P1.Purch_date, C.F_name, A.Locality, A.City
FROM PROPERTY P, ADDRESS A, CUSTOMER C, PURCHASES P1
WHERE P.Add_id=A.Add_id and P.Landlord=C.Cust_id and P1.Prop_id = P.Prop_id and 
(P1.Purch_date BETWEEN '01-JAN-2019' and '31-DEC-2020') and (P1.Sell_price BETWEEN 157000 and 279000);

