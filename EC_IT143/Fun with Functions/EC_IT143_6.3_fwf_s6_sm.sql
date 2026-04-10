-- Step 6 Compare results

SELECT ContactName,
CASE
WHEN CHARINDEX(' ', ContactName) > 0
THEN LEFT(ContactName, CHARINDEX(' ', ContactName) - 1)
ELSE ContactName
END AS AdHocFirstName,
dbo.fn_GetFirstName(ContactName) AS FunctionFirstName
FROM dbo.t_w3_schools_customers;