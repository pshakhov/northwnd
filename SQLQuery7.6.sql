
/* 7.6. Найти максимальные заказы в разрезе OrderID только больше 5000. */

SELECT OrderID, MAX(UnitPrice*(1-Discount)*Quantity) AS Cost
FROM [Order Details]
GROUP BY OrderID
HAVING MAX(UnitPrice*(1-Discount)*Quantity)>5000
ORDER BY Cost;