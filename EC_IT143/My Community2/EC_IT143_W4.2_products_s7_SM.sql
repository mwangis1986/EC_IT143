/*
Step 6
Load the table from the view
*/

DROP TABLE IF EXISTS TotalProducts;
GO

TRUNCATE TABLE dbo.t_products_total;

INSERT INTO dbo.t_products_total (TotalProducts)
SELECT TotalProducts
FROM dbo.v_products_total;