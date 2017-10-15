
/* 11.3. Найдите продавцов, которые обслуживают более 5 территорий */

SELECT DISTINCT LastName
  FROM Employees AS e
  WHERE 
  (SELECT DISTINCT (COUNT(TerritoryID))
                      FROM EmployeeTerritories AS et
                      WHERE e.EmployeeID = et.EmployeeID) >= 5;