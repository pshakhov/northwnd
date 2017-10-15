
/* 10.2 Вывести имена только тех клиентов,
которые не имеют ни одного заказа. Не использовать EXISTS.*/


SELECT *
FROM
(SELECT c.ContactName
FROM Customers AS c
JOIN
Orders AS o
ON c.CustomerID = o.CustomerID
WHERE c.CustomerID != o.CustomerID OR o.OrderDate IS NULL OR o.OrderID IS NULL) AS result
 

