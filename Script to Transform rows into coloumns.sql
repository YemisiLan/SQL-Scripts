/*
Author: Yemisi Adeoluwa
Date: 28/04/2020
Title: Script to Transform rows into coloumns
Description: using Pivot to transform rows into columns

*/

SELECT Country, City1, City2, City3 -- this is the list of the column of the main query that is generated from the below row number and pivot query result.
FROM
(
       'City' + CAST (ROW_NUMBER() OVER (PARTITION BY Country ORDER BY Country) AS Varchar(10)) AS ColumnSequence  -- this is the column sequence for the rows
FROM   COUNTRIES
) Temp  -- naming this row 
PIVOT -- this is the pivot query
(
   MAX (City)
   For ColumnSequence in (City1, City2, City3)
)PIV

--Query that return only numeric data
SELECT [Value] FROM TestTable WHERE ISNUMERIC (Value) = 1

