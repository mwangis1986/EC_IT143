/*
Step 7
Create the Stored Procedure
*/

DROP PROCEDURE IF EXISTS dbo.sp_load_products_total;
GO

CREATE PROCEDURE dbo.sp_load_products_total
AS
BEGIN
TRUNCATE TABLE dbo.t_products_total;

INSERT INTO dbo.t_products_total (TotalProducts)
SELECT TotalProducts
FROM dbo.v_products_total;
END
GO