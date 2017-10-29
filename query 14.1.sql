
/* 14.1. Составить отчет, содержащий максимальные заказы в разрезе дат с учетом количества закупленных товаров и скидок по ним. 
Причем выводить только суммы заказов больше 5000. */

SELECT o.OrderDate, MAX(od.Quantity * od.UnitPrice*(1 - od.Discount)) AS [Max Orders]

FROM [Order Details] AS od

JOIN Orders AS o

ON o.OrderID = od.OrderID

GROUP BY o.OrderDate

HAVING MAX(od.Quantity * od.UnitPrice*(1 - od.Discount)) > 5000;