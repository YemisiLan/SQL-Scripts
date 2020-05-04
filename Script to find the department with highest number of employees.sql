/*
Author: Yemisi Adeoluwa
Date: 28/04/2020
Title: Script to find the department with highest number of employees
Description: finding the department with the highest 

*/
--this first query would show the name of the department and the count of the employee
SELECT TOP 1 DepartmentName, COUNT(*) AS EmployeeCount
FROM Employees
JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
GROUP BY DepartmentName
ORDER BY EmployeeCount desc

--but what if you only want to see the department with the highest employee without the total number of employee, then remove Count from the select list and place it in the Order By clause
SELECT TOP 1 DepartmentName
FROM Employees
JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
GROUP BY DepartmentName
ORDER BY COUNT(*) desc

