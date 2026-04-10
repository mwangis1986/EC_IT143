-- Step 3: Ad Hoc Query

SELECT
ContactName,
CASE
WHEN CHARINDEX(' ', ContactName) >0
THEN LEFT(ContactName, CHARINDEX(' ', ContactName) - 1)
ELSE ContactName
END AS FirstName
FROM dbo.t_w3_schools_customers;