/*
step7 Turn the ad hoc SQL script into a stored procedure
*/

GO

DROP PROCEDURE IF EXISTS dbo.sp_load_employee_total_salary;
GO

CREATE PROCEDURE dbo.sp_load_employee_total_salary
AS
BEGIN
TRUNCATE TABLE dbo.t_employee_total_salary

INSERT INTO dbo.t_employee_total_salary
SELECT TotalSalary
FROM dbo.v_employee_total_Salary
END

SELECT*
FROM dbo.t_employee_total_salary;