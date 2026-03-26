/*
Step 4
Create View
*/

GO

DROP VIEW IF EXISTS dbo.v_products_total;
GO

CREATE VIEW dbo.v_products_total
AS
SELECT COUNT(*) AS TotalProduct
FROM products;
GO

SELECT*
FROM dbo.v_products_total;