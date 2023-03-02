REM creating Branch objects

INSERT INTO Branch_tab VALUES ('Jesmond branch', 7747474733, Agent_objtab() )
/
INSERT INTO Branch_tab VALUES ('Fenham branch', 7747475733, Agent_objtab() )
/
INSERT INTO Branch_tab VALUES ('Teams branch', 7746474733, Agent_objtab() )
/
INSERT INTO Branch_tab VALUES ('Gate branch', 7757474733, Agent_objtab() )
/

REM Inserting a Agent tuple 1

INSERT INTO Agent VALUES('Newcastle agent', 'Newcastle', 'newcastle@movehome.com', 7700223344,
                            Address_objtab( Address_objtyp ('Jesmond', 'Newcastle upon Tyne'),
                                            Address_objtyp ('Fenham', 'Newcastle upon Tyne')),
                            Branch_objtab())
/

REM inserting into the nested table of Branch REFs 

INSERT INTO TABLE(
    SELECT A.Branches 
    FROM Agent A
    WHERE A.Name = 'Newcastle agent')
SELECT REF(b)
        FROM Branch_tab b
        WHERE b.Name IN ('Jesmond branch', 'Fenham branch')
/

REM Inserting a Agent tuple 2

INSERT INTO Agent VALUES('Gateshead agent', 'Gateshead', 'newcastle@movehome.com', 7701223344,
                            Address_objtab( Address_objtyp ('Teams', 'Gateshead'),
                                            Address_objtyp ('Gate', 'Gateshead')),
                            Branch_objtab())
/

REM inserting into the nested table of Branch REFs2 

INSERT INTO TABLE(
    SELECT A.Branches 
    FROM Agent A
    WHERE A.Name = 'Gateshead agent')
SELECT REF(b)
        FROM Branch_tab b
        WHERE b.Name IN ('Teams branch', 'Gate branch')
/

REM  link Branch objects to the Agent objects, for
REM bi-directional relationships

INSERT INTO TABLE (
   SELECT B.Agents
   FROM Branch_tab B
   WHERE B.Name = 'Jesmond branch')
SELECT REF(a)
FROM Agent a
WHERE a.Name IN ('Newcastle agent');