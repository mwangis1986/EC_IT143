/*
EC_IT143_W4.2_hello_world_s4_SM.sql

Step 4: Turn Ad Hoc SQL Query into a View
This view store query that returns "Hello World"
*/

DROP VIEW IF EXISTS v_hello_world;
GO

CREATE VIEW v_hello_world
AS
SELECT 'Hello World' AS Greeting;
GO

SELECT *
FROM dbo.v_hello_world;