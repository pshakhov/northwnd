/* 9.2.	Вывести названия всех продуктов и номера заказов, связанных с ними. 
Название продукта выводить даже в том случае,
если для него нет ни одного заказа */



SELECT p.ProductName AS [Product Name]
FROM Products AS p 
LEFT OUTER JOIN
[Order Details] AS od 
ON p.ProductID = od.ProductID 
GROUP BY p.ProductName;
