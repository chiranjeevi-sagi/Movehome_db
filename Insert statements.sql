INSERT INTO ADDRESS VALUES(3,'The Bungalow','Lansdown Corner','Jesmond', 'Newcastle upon Tyne', 'UK', 'NE21AD');
INSERT INTO ADDRESS VALUES(17,'Sunnyside','Drayton Garden','Jesmond', 'Newcastle upon Tyne', 'UK', 'NE21DL');
INSERT INTO ADDRESS VALUES(28,'The Stables','Jane Road','Jesmond', 'Newcastle upon Tyne', 'UK', 'NE21EL');
INSERT INTO ADDRESS VALUES(16,'The Old Vicarage','Athelstan Street','Arthurs Hill', 'Newcastle upon Tyne', 'UK', 'NE41DH');
INSERT INTO ADDRESS VALUES(38,'The Orchard','Wellfield Wood','Fenham','Newcastle','UK','NE41EY');
INSERT INTO ADDRESS VALUES(44,'Hogarth Close','Firs Wood','Byker','Newcastle upon Tyne','UK','NE11HL');
INSERT INTO ADDRESS VALUES(4,'The Coach House','Barley Cloisters','Byker','Newcastle upon Tyne','UK','NE31AE');
INSERT INTO ADDRESS VALUES(5,'Orchard House','Cypress Orchard','Millfield','Sunderland','UK','NE61AH');
INSERT INTO ADDRESS VALUES(6,'The Lodge','Eliot Lawn','Pallion','Sunderland','UK','NE61AN');
INSERT INTO ADDRESS VALUES(14,'Hillcrest','Lawn Chase','Hendon','Sunderland','UK','NE61DF');
INSERT INTO ADDRESS VALUES(22,'The Gables','Willow Tree Oaks','Teams','Gateshead','UK','NE81DX');
INSERT INTO ADDRESS VALUES(25,'The Firs','Kent Lawns','Heaton','Newcastle upon Tyne','UK','NE31EF');
INSERT INTO ADDRESS VALUES(39,'Treetops','Frome Pastures','Millfield','Sunderland','UK','NE61EZ');

INSERT INTO EST_AGENT VALUES(1,'Newcastle Agent','Newcastle upon Tyne', 'newcastle.properties@abc.com', 700048947,3);
INSERT INTO EST_AGENT VALUES(2,'Gateshead Agent','Gateshead', 'gateshead.properties@abc.com', 7000673308,22);
INSERT INTO EST_AGENT VALUES(3,'Sunderland Agent','Sunderland', 'sunderland.properties@abc.com', 7000243301,6);
INSERT INTO EST_AGENT VALUES(4,'Durham Agent','Durham', 'durham.properties@abc.com', 7000990920,39);

ALTER TABLE BRANCH DISABLE CONSTRAINT UNIQ_MANAGER;

INSERT INTO BRANCH VALUES(1, 'Newcastle East',7000311157,1,3,1);
INSERT INTO BRANCH VALUES(2, 'Newcastle West',7000084864,1,17,2);
INSERT INTO BRANCH VALUES(3, 'Newcastle North',7100311157,1,28,3);
INSERT INTO BRANCH VALUES(4, 'Newcastle South',7000202157,1,16,4);
INSERT INTO BRANCH VALUES(5, 'Gateshead East',7000117824,2,38,5);
INSERT INTO BRANCH VALUES(6, 'Gateshead West',7000009305,2,44,6);
INSERT INTO BRANCH VALUES(7, 'Gateshead North',7000636872,2,4,7);
INSERT INTO BRANCH VALUES(8, 'Gateshead South',7000009488,2,5,8);
INSERT INTO BRANCH VALUES(9, 'Sunderland East',7000110095,3,6,9);
INSERT INTO BRANCH VALUES(10,'Sunderland West',7000756715,3,14,10);
INSERT INTO BRANCH VALUES(11,'Sunderland North',7000476989,3,22,1);
INSERT INTO BRANCH VALUES(12,'Sunderland South',7000265991,3,25,2);
INSERT INTO BRANCH VALUES(13, 'Durham East',7000223469,4,39,3);
INSERT INTO BRANCH VALUES(14, 'Durham West',7000218527,4,3,4);
INSERT INTO BRANCH VALUES(15, 'Durham North',7000036115,4,28,5);
INSERT INTO BRANCH VALUES(16, 'Durham South',7000774136,4,4,6);

INSERT INTO STAFF VALUES(1,'Katelyn','Rowland','18-JUN-1990','Female',7429681199,'Manager',39,1);
INSERT INTO STAFF VALUES(2,'Will','Ford','27-JAN-1997','Male',7352268620,'Manager',25,2);
INSERT INTO STAFF VALUES(3,'Alani','Hernandez','26-JAN-1996','Female',7215209218,'Manager',4,3);
INSERT INTO STAFF VALUES(4,'Arabella','Randolph','21-MAR-1991','Female',7438860927,'Manager',5,4);
INSERT INTO STAFF VALUES(5,'Jamiya','Joseph','06-FEB-1991','Female',7289243289,'Manager',6,5);
INSERT INTO STAFF VALUES(6,'Rodrigo','Leach','07-SEP-1994','Male',7269700902,'Manager',22,6);
INSERT INTO STAFF VALUES(7,'Chandler','Barr','28-SEP-1992','Male',7247659066,'Manager',28,7);
INSERT INTO STAFF VALUES(8,'Aiden','Moss','03-SEP-1990','Female',7253912078,'Manager',17,8);
INSERT INTO STAFF VALUES(9,'Haley','Macdonald','02-NOV-1996','Female',7266571271,'Manager',25,9);
INSERT INTO STAFF VALUES(10,'Clara','Ochoa','16-AUG-1993','Female',7337214799,'Manager',5,10);
INSERT INTO STAFF VALUES(11,'Stephen','James','15-JUN-1994','Female',7250638003,'Manager',16,11);

ALTER TABLE BRANCH ENABLE CONSTRAINT UNIQ_MANAGER;

INSERT INTO CUSTOMER VALUES(1,'Ben','Jones','15-JUN-1997','Male',7168891363,17,1);
INSERT INTO CUSTOMER VALUES(2,'John','Smith','31-DEC-1995','Male',7426586102,28,14);
INSERT INTO CUSTOMER VALUES(3,'Ravi','Mathews','15-AUG-1991','Male',7235428281,39,9);
INSERT INTO CUSTOMER VALUES(4,'shankar','Mahadevan','12-OCT-1993','Male',7557308604,6,9);
INSERT INTO CUSTOMER VALUES(5,'Emilia','Clarke','16-JAN-1995','Female',7839677807,16,16);
INSERT INTO CUSTOMER VALUES(6,'Dwayne','Johnson','14-APR-1996','Male',7619672993,17,1);
INSERT INTO CUSTOMER VALUES(7,'Anthony','Josh','26-MAY-1991','Male',7826169639,38,10);
INSERT INTO CUSTOMER VALUES(8,'Anshuman','Gogia','19-DEC-1996','Male',7238462659,5,5);
INSERT INTO CUSTOMER VALUES(9,'Ritika','Jain','28-JUL-1997','Female',7201163685,6,9);
INSERT INTO CUSTOMER VALUES(10,'Swathi','Shankar','09-JUN-1990','Female',7336219026,4,2);
INSERT INTO CUSTOMER VALUES(11,'Jacob','Reed','30-NOV-1990','Female',7123101912,22,6);
INSERT INTO CUSTOMER VALUES(12,'Stephanie','Gregory','12-MAR-1990','Female',7140711599,25,15);
INSERT INTO CUSTOMER VALUES(13,'Leslie','Jackson','15-DEC-1993','Female',7301237784,38,4);
INSERT INTO CUSTOMER VALUES(14,'Jennifer','Davis','20-MAY-1992','Male',7342758808,3,14);
INSERT INTO CUSTOMER VALUES(15,'Daniel','Higgins','28-FEB-1993','Female',7120131728,17,14);
INSERT INTO CUSTOMER VALUES(16,'Amanda','Bailey','19-APR-1994','Female',7343136623,16,7);
INSERT INTO CUSTOMER VALUES(17,'Christine','Holloway','17-MAR-1991','Female',7260699083,14,16);
INSERT INTO CUSTOMER VALUES(18,'Wanda','Walker','01-NOV-1992','Male',7268905972,25,8);
INSERT INTO CUSTOMER VALUES(19,'Richard','Williams','10-DEC-1996','Male',7126217378,3,9);
INSERT INTO CUSTOMER VALUES(20,'Brian','Durham','02-NOV-1995','Female',7419625712,44,4);

INSERT INTO PROPERTY VALUES(3,'The Bungalow','furnished','Semi-detached',3,2,'Semidetached bunglaow fully furnished with 3 beds and 2 bathrooms','for sale','22-JUL-2022',260,1,20,3);
INSERT INTO PROPERTY VALUES(16,'The Old Vicarage','furnished','Semi-detached',3,2,'Semidetached bunglaow fully furnished with 3 beds and 2 bathrooms','for rent','16-MAR-2018',477,4,19,16);
INSERT INTO PROPERTY VALUES(17,'Sunnyside','furnished','Semi-detached',4,3,'furnished semidetached sunnyside house with 4 bedrooms and 3 bathrooms','for sale','24-JUL-2022',722,2,18,17);
INSERT INTO PROPERTY VALUES(28,'The Stables','Unfurnished','Semi-detached',3,1,'unfurnished semidetached house with 3 bedroom and 1 bathroom','for sale','16-JUL-2022',679,4,17,28);
INSERT INTO PROPERTY VALUES(38,'The Orchard','furnished','Semi-detached',1,1,'furnished semidetached house with 1 bedrooms and 1 bathrooms','for rent','27-JUL-2018',397,2,16,38);
INSERT INTO PROPERTY VALUES(44,'Stanford house','furnished','Semi-detached',3,1,'furnished flat with 3 bedroom and 1 bathroom','for rent','30-JAN-2022',688,10,15,44);
INSERT INTO PROPERTY VALUES(4,'The Coach House','Unfurnished','End-of-terrace',3,1,'House with unfurnished and end of terrace style with 3 beds and 1 bathrooms','sold','06-JUN-2019',323,2,14,4);
INSERT INTO PROPERTY VALUES(5,'Orchard House','unfurnished','Terraced',4,2,'House unfurnished terrace type building with 4 beds and 2 bathrooms','sold','08-JUN-2020',725,11,13,5);
INSERT INTO PROPERTY VALUES(6,'The Lodge','furnished','End-of-terrace',1,1,'End-of-terrace type building with furnished 1 bedrooms and 1 bathroom attached','sold','07-AUG-2019',485,10,12,6);
INSERT INTO PROPERTY VALUES(14,'Hillcrest','furnished','Flat',1,1,'furnished hillcrest flat with 1 bed room and 1 bathroom','sold','13-MAR-2019',731,9,11,14);
INSERT INTO PROPERTY VALUES(22,'The Gables','furnished','End-of-terrace',2,2,'furnished endofterrace with 2 bed rooms and 2 bathrooms','sold','04-AUG-2019',910,6,10,22);
INSERT INTO PROPERTY VALUES(25,'The Firs','Furnished','Terraced',4,4,'terraced furnished with 4 bed rooms and 4 bathrooms','sold','16-AUG-2019',525,2,9,25);
INSERT INTO PROPERTY VALUES(39,'Treetops','furnished','End-of-terrace',2,2,'furnished endofterrace house with 2 bedrooms and 2 bathrooms','sold','19-JAN-2019',432,10,8,39);

INSERT INTO PROP_FOR_SALE VALUES(1,17,206227);
INSERT INTO PROP_FOR_SALE VALUES(2,3,182943);
INSERT INTO PROP_FOR_SALE VALUES(3,28,207969);
INSERT INTO PROP_FOR_SALE VALUES(4,17,216775);
INSERT INTO PROP_FOR_SALE VALUES(5,3,274156);
INSERT INTO PROP_FOR_SALE VALUES(6,28,240726);
INSERT INTO PROP_FOR_SALE VALUES(7,3,276595);
INSERT INTO PROP_FOR_SALE VALUES(8,17,206760);
INSERT INTO PROP_FOR_SALE VALUES(9,28,240607);
INSERT INTO PROP_FOR_SALE VALUES(10,3,197934);

INSERT INTO PROP_FOR_RENT VALUES(1,16,814);
INSERT INTO PROP_FOR_RENT VALUES(2,38,968);
INSERT INTO PROP_FOR_RENT VALUES(3,16,913);
INSERT INTO PROP_FOR_RENT VALUES(4,44,1280);
INSERT INTO PROP_FOR_RENT VALUES(5,16,1071);
INSERT INTO PROP_FOR_RENT VALUES(6,38,1488);
INSERT INTO PROP_FOR_RENT VALUES(7,44,837);
INSERT INTO PROP_FOR_RENT VALUES(8,16,747);
INSERT INTO PROP_FOR_RENT VALUES(9,38,1273);
INSERT INTO PROP_FOR_RENT VALUES(10,44,912);

INSERT INTO RENTALS VALUES(1,3,'20-OCT-2018','20-OCT-2023',959,352,35.2,2,1);
INSERT INTO RENTALS VALUES(2,17,'24-JUL-2018','24-JUL-2023',515,1254,125.4,3,4);
INSERT INTO RENTALS VALUES(3,28,'17-APR-2021','17-APR-2023',651,1244,124.4,5,6);
INSERT INTO RENTALS VALUES(4,16,'25-NOV-2021','25-NOV-2023',331,500,50,7,8);
INSERT INTO RENTALS VALUES(5,38,'21-DEC-2020','21-DEC-2023',293,780,78,9,10);
INSERT INTO RENTALS VALUES(6,44,'15-AUG-2021','15-AUG-2023',644,679,67.9,11,12);
INSERT INTO RENTALS VALUES(7,4,'23-JUN-2019','23-JUN-2023',450,451,45.1,13,14);
INSERT INTO RENTALS VALUES(8,5,'30-OCT-2018','30-OCT-2023',616,871,87.1,15,16);
INSERT INTO RENTALS VALUES(9,6,'18-OCT-2018','18-OCT-2023',399,554,55.4,17,18);
INSERT INTO RENTALS VALUES(10,14,'12-JUL-2018','12-JUL-2023',856,621,62.1,19,20);

INSERT INTO PURCHASES VALUES(1,4,'16-JUN-2019',5204.2,260210,3903.15,2,1);
INSERT INTO PURCHASES VALUES(2,5,'18-JUN-2020',4340.2,217010,3255.15,3,4);
INSERT INTO PURCHASES VALUES(3,6,'17-AUG-2019',3827.72,191386,2870.79,5,6);
INSERT INTO PURCHASES VALUES(4,5,'01-MAR-2019',5894.28,294714,4420.71,7,8);
INSERT INTO PURCHASES VALUES(5,14,'23-MAR-2019',4441.5,222075,3331.125,9,10);
INSERT INTO PURCHASES VALUES(6,22,'24-AUG-2019',3782.78,189139,2837.085,11,12);
INSERT INTO PURCHASES VALUES(7,25,'26-AUG-2019',4609.24,230462,3456.93,13,14);
INSERT INTO PURCHASES VALUES(8,4,'12-SEP-2019',5791.96,289598,4343.97,15,16);
INSERT INTO PURCHASES VALUES(9,5,'26-AUG-2020',3128.32,156416,2346.24,17,18);
INSERT INTO PURCHASES VALUES(10,39,'15-MAR-2020',5913.72,295686,4435.29,19,20);

INSERT INTO VISITS VALUES(1,3,'Good place and area yet to decide','17-JUL-2022',20,19);
INSERT INTO VISITS VALUES(2,17,'willing to buy','30-JUN-2022',18,17);
INSERT INTO VISITS VALUES(3,28,'will look for alternatives','02-JUN-2022',16,15);
INSERT INTO VISITS VALUES(4,16,'willing to buy','02-JUN-2022',14,13);
INSERT INTO VISITS VALUES(5,38,'advance security deposit paid','03-JUL-2022',12,11);
INSERT INTO VISITS VALUES(6,44,'interested','17-JUL-2022',10,9);
INSERT INTO VISITS VALUES(7,38,'will look for alternatives','11-JUN-2022',8,7);
INSERT INTO VISITS VALUES(8,16,'interested','25-JUL-2022',6,5);
INSERT INTO VISITS VALUES(9,28,'willing to buy','12-JUL-2022',4,3);
INSERT INTO VISITS VALUES(10,17,'will look for alternatives','19-JUN-2022',2,1);