# SQL Code Snippets: WHERE, GROUP BY, HAVING

This file contains a collection of SQL code snippets that demonstrate the usage of the WHERE, GROUP BY, and HAVING clauses for data filtering, grouping, and aggregate functions.

1. Filtering Data with WHERE Clause:

-- Example 1: List the details about employees with the last name 'Smith'
SELECT *
FROM Employees
WHERE Last_Name = 'Smith';

-- Example 2: List the employees working in department 30
SELECT *
FROM Employees
WHERE Department_ID = 30;

-- Example 3: List the employees earning a salary between $3000 and $4500
SELECT *
FROM Employees
WHERE Salary BETWEEN 3000 AND 4500;

-- Example 4: List the employees working in department 30 or 20
SELECT *
FROM Employees
WHERE Department_ID IN (30, 20);

-- Example 5: List the employees not working in department 10 or 30
SELECT *
FROM Employees
WHERE Department_ID NOT IN (10, 30);

-- Example 6: List the employees whose first name starts with 'S'
SELECT *
FROM Employees
WHERE First_Name LIKE 'S%';

-- Example 7: List the employees whose first name starts with 'S' and ends with 'H'
SELECT *
FROM Employees
WHERE First_Name LIKE 'S%' AND Last_Name LIKE '%H';

-- Example 8: List the employees whose last name has a length of 4 and starts with 'S'
SELECT *
FROM Employees
WHERE LEN(Last_Name) = 4 AND Last_Name LIKE 'S%';

2. Grouping Data with GROUP BY Clause:

-- Example 1: Calculate the total salary for each department
SELECT Department_ID, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Department_ID;

-- Example 2: Count the number of employees in each country
SELECT Country, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY Country;

3. Filtering Grouped Data with HAVING Clause:

-- Example 1: List the departments with more than 3 employees
SELECT Department_ID, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY Department_ID
HAVING COUNT(*) > 3;

-- Example 2: Calculate the average salary for departments with at least 5 employees
SELECT Department_ID, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department_ID
HAVING COUNT(*) >= 5;
