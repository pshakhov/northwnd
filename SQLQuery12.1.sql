
/* 12.1.	Высветить всех заказчиков (таблица Customers), 
которые не имеют ни одного заказа (подзапрос по таблице Orders). 
Использовать коррелированный SELECT и оператор EXISTS. */


SELECT ContactName
FROM Customers AS c
WHERE NOT EXISTS 
  (SELECT CustomerID
   FROM Orders AS o
   WHERE c.CustomerID = o.CustomerID);