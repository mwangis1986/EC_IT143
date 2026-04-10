-- Step 7 Result test

WITH cte AS (
SELECT ContactName,
CASE
WHEN CHARINDEX(' ', ContactName) > 0
THEN LEFT (ContactName, CHARINDEX(' ', ContactName) - 1)
ELSE ContactName
END AS AdHocFirstName,
dbo.fn_GetFirstName(ContactName) AS FunctionFirstName
FROM dbo.t_w3_schools_customers
)
SELECT*
FROM cte
WHERE AdHocFirstName <> FunctionFirstName;