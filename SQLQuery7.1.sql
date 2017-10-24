
/* 7.1.	По таблице Orders найти количество заказов с группировкой по годам. 
В результатах запроса надо высвечивать две колонки c названиями Year и Total. 
Написать проверочный запрос, который вычисляет количество всех заказов. */



SELECT YEAR(OrderDate) AS [Year], COUNT(YEAR(OrderDate)) AS [Total]
FROM Orders
GROUP BY (YEAR(OrderDate));
