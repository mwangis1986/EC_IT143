/*
Step 5.1
Create the Table from View
*/

SELECT*
INTO dbo.t_products_total
FROM dbo.v_products_total;