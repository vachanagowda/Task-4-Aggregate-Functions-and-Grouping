CREATE TABLE EMPLOYEE_DETAILS (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO EMPLOYEE_DETAILS (Emp_ID, Emp_Name, Department, Salary) VALUES
(1, 'Alice',   'HR',        45000),
(2, 'Bob',     'HR',        50000),
(3, 'Charlie', 'Finance',   60000),
(4, 'David',   'Finance',   55000),
(5, 'Eva',     'Finance',   65000),
(6, 'Frank',   'IT',        70000),
(7, 'Grace',   'IT',        72000),
(8, 'Helen',   'IT',        68000),
(9, 'Ian',     'Sales',     40000),
(10,'Jane',    'Sales',     42000);

--SUM
SELECT Department, SUM(Salary) AS Total_Salary
FROM EMPLOYEE_DETAILS
GROUP BY Department;

--AVG
SELECT Department, AVG(Salary) AS Avg_Salary
FROM EMPLOYEE_DETAILS
GROUP BY Department;

--COUNT
SELECT Department, COUNT(*) AS Employee_Count
FROM EMPLOYEE_DETAILS
GROUP BY Department;

--MAX
SELECT Department, MAX(Salary) AS Highest_Salary
FROM EMPLOYEE_DETAILS
GROUP BY Department;

--MIN
SELECT Department, MIN(Salary) AS Lowest_Salary
FROM EMPLOYEE_DETAILS
GROUP BY Department;

--HAVING
SELECT Department, COUNT(*) AS Employee_Count
FROM EMPLOYEE_DETAILS
GROUP BY Department
HAVING COUNT(*) > 2;
