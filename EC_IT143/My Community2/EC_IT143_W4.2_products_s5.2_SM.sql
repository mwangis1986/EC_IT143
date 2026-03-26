/*
Step 5.2
Refine the Table
*/

DROP TABLE IF EXISTS dbo.t_products_total;
GO

CREATE TABLE dbo.t_products_total
(
product_id INT IDENTITY(1,1) PRIMARY KEY,
TotalProducts INT NOT NULL
);