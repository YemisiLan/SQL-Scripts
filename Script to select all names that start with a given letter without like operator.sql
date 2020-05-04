/*
Author: Yemisi Adeoluwa
Date: 28/04/2020
Title: Script to select all names that start with a given letter without like operator
Description: writing alternative query without using the like operator to find all names that starts with a given letter 

*/

--Using Like function
SELECT * FROM Students 
WHERE Name LIKE 'M%'


--WITHOUT USING THE LIKE OPERATOR, YOU CAN USE CHARINDEX, LEFT, OR SUBSTRING FUNCTIONS.

--Not using LIKE function but using CharIndex Function
SELECT *
FROM Students 
WHERE CharIndex('M', Name) = 1

--Not using LIKE function but using Left Function
SELECT *
FROM Students 
WHERE LEFT(Name, 1) = 'M'

--Not using LIKE function but using Substring
SELECT *
FROM Students 
WHERE Substring(Name, 1, 1) = 'M'

 

