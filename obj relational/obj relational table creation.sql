REM object relational Design

rem Agent(Name, Address({Set of Address(Street, City)}), Hq, website, phone)


DROP TYPE Agent_objtyp FORCE
/
DROP TYPE Agent_objref FORCE
/
DROP TYPE Agent_objref FORCE
/
DROP TYPE Branch_objtab FORCE
/
DROP TYPE Branch_objtyp FORCE
/
DROP TYPE Branch_objref FORCE
/
DROP TYPE Address_objtyp FORCE
/
DROP TYPE Address_objtab FORCE
/
DROP TABLE Agent cascade constraints purge
/
DROP TABLE Branch_tab cascade constraints purge
/

CREATE TYPE Agent_objtyp
/

CREATE OR REPLACE TYPE Agent_objref AS OBJECT (
	AgentRef REF Agent_objtyp)
/
CREATE OR REPLACE TYPE Agent_objtab as Table of Agent_objref
/
CREATE TYPE Branch_objtyp AS OBJECT(
    Name VARCHAR2(25),
    Phone NUMBER,
    Agents Agent_objtab)
/
CREATE TYPE Branch_objref AS OBJECT (
    BranchRef REF Branch_objtyp)
/

CREATE TYPE Branch_objtab AS TABLE OF Branch_objref
/

CREATE TYPE Address_objtyp AS OBJECT(
    Street VARCHAR2(25),
    City VARCHAR(25))
/

CREATE TYPE Address_objtab AS TABLE OF Address_objtyp
/


CREATE OR REPLACE TYPE Agent_objtyp AS OBJECT(
    Name VARCHAR2(25),
    Hq VARCHAR2(20),
    website VARCHAR2(25),
    Phone NUMBER,
    Address Address_objtab,
    Branches Branch_objtab
)
/

CREATE TABLE Agent OF Agent_objtyp (PRIMARY KEY(Name))
NESTED TABLE Address STORE AS Agent_Addresses
NESTED TABLE Branches STORE AS Agent_Branches
/

CREATE TABLE Branch_tab OF Branch_objtyp (PRIMARY KEY (Name))
NESTED TABLE Agents STORE AS Branch_Agent
/