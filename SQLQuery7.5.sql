
/* 7.5.	По таблице Employees найти для каждого продавца его руководителя, т.е. кому он делает репорты. 
Высветить колонки с именами 'User Name' (LastName) и 'Boss'. 
В колонках должны быть высвечены имена из колонки LastName. 
Высвечены ли все продавцы в этом запросе? */

SELECT DISTINCT e.LastName AS [User Name], s.ContactName AS Boss
FROM Employees AS e, Suppliers AS s
WHERE e.ReportsTo = s.SupplierID;
