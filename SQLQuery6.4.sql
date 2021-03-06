﻿
/* 6.4	Найти среднюю стоимость снятых с производства продуктов категории 7 без учета скидки. */

SELECT AVG(UnitPrice) AS [Average Cost]
FROM [Order Details] AS od
WHERE EXISTS
(
SELECT * 
FROM Products as p
WHERE od.ProductID = p.ProductID AND Discontinued = '1' AND p.CategoryID ='7'
);