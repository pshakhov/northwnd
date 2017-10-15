/* 6.4	Найти среднюю стоимость снятых с производства продуктов категории 7 без учета скидки. */

SELECT AVG(UnitPrice) AS [Average Cost]
FROM [Order Details]
WHERE ProductID = '7'