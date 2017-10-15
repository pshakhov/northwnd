
/* 7.6. ����� ������������ ������ � ������� OrderID ������ ������ 5000. */

SELECT OrderID, MAX(UnitPrice*(1-Discount)*Quantity) AS Cost
FROM [Order Details]
GROUP BY OrderID
HAVING MAX(UnitPrice*(1-Discount)*Quantity)>5000
ORDER BY Cost;