
/* 10.2 Вывести имена только тех клиентов,
которые не имеют ни одного заказа. Не использовать EXISTS.*/

SELECT c.ContactName
FROM Customers AS c
WHERE c.CustomerID NOT IN 
(
SELECT CustomerID
FROM Orders AS o
);
