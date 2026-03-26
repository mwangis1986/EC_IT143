/*
EC_IT143_W4.2_hello_world_s6_SM.sql
TABLE
*/

USE EC_IT143_da;
GO

TRUNCATE TABLE t_hello_world;

INSERT INTO t_hello_world (Greeting)
SELECT Greeting
FROM v_hello_world;

SELECT*
FROM t_hello_world;