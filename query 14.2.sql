
/* 14.2. Вывести 2-х лучших по количеству заказов продавцов, не старше 50 лет */

SELECT TOP 2 e.LastName, COUNT(o.OrderID) AS Qty
FROM Employees AS e
INNER JOIN Orders AS o
ON e.EmployeeID = o.EmployeeID
WHERE (YEAR(GetDate()) - YEAR(e.[BirthDate])) < 80
GROUP BY e.LastName
ORDER BY COUNT(o.OrderID) desc;
