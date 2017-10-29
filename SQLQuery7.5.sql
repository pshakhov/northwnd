
/* 7.5.	По таблице Employees найти для каждого продавца его руководителя, т.е. кому он делает репорты. 
Высветить колонки с именами 'User Name' (LastName) и 'Boss'. 
В колонках должны быть высвечены имена из колонки LastName. 
Высвечены ли все продавцы в этом запросе? */

    SELECT e1.LastName AS [User Name], e2.LastName As Boss
    FROM Employees AS e1
    JOIN
    Employees AS e2
        ON e1.ReportsTo = e2.EmployeeID;
