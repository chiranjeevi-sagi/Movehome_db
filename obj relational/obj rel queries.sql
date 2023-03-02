SET linesize 100;
SET RECSEP WRAPPED
SET RECSEPCHAR "-"
SET UNDERLINE =;
COLUMN Name FORMAT A15;
COLUMN Hq FORMAT A10;
COLUMN website FORMAT A25;
COLUMN Address FORMAT A35;
COLUMN Branches FORMAT A15;
SELECT   A.Name, A.Hq, A.Address, B.BranchRef.Name "Branch Name"
FROM   Agent A, TABLE (A.Branches) B
where B.BranchRef.Name = 'Jesmond branch'
/



REM  querying the inverse relationship from Branch to Agent
SET linesize 100;
SET RECSEP WRAPPED
SET RECSEPCHAR "-"
SET UNDERLINE =;
COLUMN Name FORMAT A15;
COLUMN AgentRef FORMAT A10;
COLUMN website FORMAT A25;
SELECT   B.Name,B.Phone, A.AgentRef.Name "Agent name"
FROM   Branch_tab B, TABLE (B.Agents) A
WHERE B.Name = 'Jesmond branch'
/