
/* 8.1.	Вывести номера заказов и Имена, для клиентов, проживающих в Лондоне. Использовать JOIN */



SELECT DISTINCT o.OrderID, c.ContactName
FROM Orders AS o 
INNER JOIN
Customers AS c
ON c.City = o.ShipCity
WHERE c.City = 'London';
              