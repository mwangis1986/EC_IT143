/*
step 5.2 Refine the table
Create employee total salary table
*/

GO

DROP TABLE IF EXISTS dbo.t_employee_total_salary;
GO

CREATE TABLE dbo.t_employee_total_salary
(
salary_id INT IDENTITY(1,1) PRIMARY KEY,
TotalSalary DECIMAL(18,2) NOT NULL
);

SELECT*
FROM dbo.t_employee_total_salary;