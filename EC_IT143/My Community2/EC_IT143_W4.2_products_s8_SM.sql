/*
Step 8
Call the stored procedure
*/

EXEC dbo.sp_load_products_total;

SELECT*
FROM dbo.t_products_total;