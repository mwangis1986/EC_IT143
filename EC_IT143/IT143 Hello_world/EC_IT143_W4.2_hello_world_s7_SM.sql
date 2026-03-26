/*
EC_IT143_W4.2_hello_world_s7_SM.sql
Turn the ad hoc SQL script into a stored procedure
*/

GO

DROP PROCEDURE IF EXISTS sp_load_hello_world;
GO

CREATE PROCEDURE sp_load_hello_world
AS
BEGIN
TRUNCATE TABLE t_hello_world;

INSERT INTO t_hello_world (Greeting)
SELECT Greeting
FROM v_hello_world;
END;
GO