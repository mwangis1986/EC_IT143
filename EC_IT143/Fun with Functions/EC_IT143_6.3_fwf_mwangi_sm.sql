-- Step 5 Main function

DROP FUNCTION IF EXISTS dbo.fn_GetLastName;
GO

CREATE FUNCTION dbo.fn_GetLastName (@ContactName VARCHAR(100))
RETURNS VARCHAR(100)
AS
BEGIN
RETURN
CASE
WHEN CHARINDEX(' ', @ContactName) > 0
THEN RIGHT(@ContactName, LEN(@ContactName) - CHARINDEX(' ', @ContactName))
ELSE @ContactName
END
END;
GO

SELECT 
ContactName,
dbo.fn_GetFirstName(ContactName) AS FirstName,
dbo.fn_GetLastName(ContactName) AS LastName
FROM dbo.t_w3_schools_customers;