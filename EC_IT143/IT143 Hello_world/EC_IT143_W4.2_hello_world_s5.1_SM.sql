/*
EC_IT143_W4.2_hello_world_s5.1_SM.sql

Step 5: Creating table from View
*/

CREATE VIEW v_hello_world
AS
SELECT 'Hello World' AS Greeting
GO

SELECT *
INTO t_hello_world
FROM v_hello_world;
GO

SELECT * 
FROM t_hello_world;