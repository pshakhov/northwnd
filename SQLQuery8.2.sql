
/* 8.2.	Определить продавцов, которые обслуживают регион 'Western' (таблица Region). 
Результаты запроса должны высвечивать два поля: 'LastName' продавца и 
название обслуживаемой территории ('TerritoryDescription' из таблицы Territories). 
Запрос должен использовать JOIN в предложении FROM. 
Для определения связей между таблицами Employees и Territories надо использовать графические диаграммы для базы Northwind. */



SELECT e.LastName, t.TerritoryDescription
FROM Employees AS e
INNER JOIN
EmployeeTerritories AS et
ON e.EmployeeID = et.EmployeeID
INNER JOIN
Territories AS t
ON et.TerritoryID = t.TerritoryID
INNER JOIN
Region AS r
ON t.RegionID = r.RegionID
WHERE r.RegionDescription = 'Western'
ORDER BY e.LastName, t.TerritoryDescription;

              