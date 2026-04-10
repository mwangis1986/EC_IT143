IF NOT EXISTS (
    SELECT * FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 't_w3_schools_customers'
    AND COLUMN_NAME = 'last_modified_date'
)
BEGIN
    ALTER TABLE dbo.t_w3_schools_customers
    ADD last_modified_date DATETIME;
END;
GO

IF NOT EXISTS (
    SELECT * FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_NAME = 't_w3_schools_customers'
    AND COLUMN_NAME = 'last_modified_by'
)
BEGIN
    ALTER TABLE dbo.t_w3_schools_customers
    ADD last_modified_by VARCHAR(100);
END;
GO

DROP TRIGGER IF EXISTS trg_UpdateCustomerAudit;
GO

CREATE TRIGGER trg_UpdateCustomerAudit
ON dbo.t_w3_schools_customers
AFTER UPDATE
AS
BEGIN
    UPDATE c
    SET 
        last_modified_date = GETDATE(),
        last_modified_by = SUSER_NAME()
    FROM dbo.t_w3_schools_customers c
    INNER JOIN inserted i
        ON c.CustomerID = i.CustomerID;
END;
GO