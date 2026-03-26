/*
Step 6 Load the table from the view
*/

TRUNCATE TABLE dbo.t_employee_total_salary;
GO

INSERT INTO dbo.t_employee_total_salary (TotalSalary)
SELECT TotalSalary
FROM dbo.v_employee_total_salary;
GO