
/* 6.1	Найти кол-во заказов со скидкой больше 15%. */

SELECT COUNT(Discount) AS [Orders Quantity]
FROM [Order Details]
WHERE Discount > '0.15';