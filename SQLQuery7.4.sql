
/* 7.4.	Найти всех покупателей, которые живут в одном городе. 
В запросе использовать соединение таблицы Customers c собой - самосоединение. 
Высветить колонки CustomerID и City. Запрос не должен высвечивать дублируемые записи. 
Для проверки написать запрос, который высвечивает города, которые встречаются более одного раза в таблице Customers. 
Это позволит проверить правильность запроса. */

SELECT DISTINCT c1.CustomerID, c1.City
FROM Customers AS c1
INNER JOIN Customers AS c2
ON c2.City = c1.City
WHERE c2.CustomerID <> c1.CustomerID

/* SELECT City
FROM Customers
GROUP BY City
HAVING COUNT(City) > 1; */  