
/*step 4
Turn the Ad Hoc Query into view
We will culculate total salary of all employees
*/

CREATE VIEW dbo.v_employee_total_salary
AS
SELECT
SUM(Salary) AS TotalSalary
FROM employee;