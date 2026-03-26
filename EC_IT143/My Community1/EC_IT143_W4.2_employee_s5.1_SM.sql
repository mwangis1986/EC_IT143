/*
Step 5.1 Turning view into table
Create table using employee total salary
*/

GO

DROP TABLE IF EXISTS dbo.t_employee_total_salary;
GO

SELECT*
INTO dbo.t_employee_total_salary
FROM dbo.v_employee_total_salary;

SELECT*
FROM dbo.t_employee_total_salary;