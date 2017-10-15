
/* 7.4.	Найти всех покупателей, которые живут в одном городе. 
В запросе использовать соединение таблицы Customers c собой - самосоединение. 
Высветить колонки CustomerID и City. Запрос не должен высвечивать дублируемые записи. 
Для проверки написать запрос, который высвечивает города, которые встречаются более одного раза в таблице Customers. 
Это позволит проверить правильность запроса. */



SELECT DISTINCT c.CustomerID, c.City
FROM Customers AS c
WHERE EXISTS (SELECT c.City 
              FROM Customers AS c
              WHERE c.City=c.City
			  GROUP BY c.City);
			  