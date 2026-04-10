-- Step 5 Create Function

DROP FUNCTION IF EXISTS dbo.fn_GetFirstName;
GO

CREATE FUNCTION dbo.fn_GetFirstName (@ContactName VARCHAR(100))
RETURNS VARCHAR(100)
AS
BEGIN
RETURN
CASE
WHEN CHARINDEX(' ', @ContactName) >0
THEN LEFT(@ContactName, CHARINDEX(' ', @ContactName) - 1)
ELSE @ContactName
END
END;
GO