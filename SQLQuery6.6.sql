﻿
/* 6.6	По таблице Orders найти количество различных покупателей (CustomerID), сделавших заказы. 
Использовать функцию COUNT и не использовать предложения WHERE и GROUP.*/

SELECT COUNT(DISTINCT CustomerID) AS [Customers Quantity]
FROM Orders;