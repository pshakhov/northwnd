

/* 11.1. Высветить всех продавцов, которые имеют более 150 заказов. 
Использовать вложенный коррелированный SELECT. */


SELECT DISTINCT LastName
  FROM Employees AS e
  WHERE 
  (
  SELECT COUNT(OrderID)
                      FROM Orders AS o
                      WHERE o.EmployeeID = e.EmployeeID
					  ) >= 150;