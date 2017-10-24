
/* 7.2 По таблице Orders найти количество заказов, сделанных каждым продавцом. 
Заказ для указанного продавца – это любая запись в таблице Orders, 
где в колонке EmployeeID задано значение для данного продавца. 
В результатах запроса надо высвечивать колонку с именем продавца 
(Должно высвечиваться имя полученное конкатенацией LastName & FirstName. 
Эта строка LastName & FirstName должна быть получена отдельным запросом в колонке основного запроса. 
Также основной запрос должен использовать группировку по EmployeeID.) с названием колонки ‘Seller’ 
и колонку c количеством заказов высвечивать с названием 'Amount'.
Результаты запроса должны быть упорядочены по убыванию количества заказов */



SELECT COUNT(OrderID) AS Amount, EmployeeID,
(
SELECT CONCAT(LastName, ' ', FirstName)
FROM Employees AS emp
WHERE emp.EmployeeID = ord.EmployeeID
) AS [Seller] 
FROM Orders AS ord
GROUP BY ord.EmployeeID
ORDER BY COUNT(ord.OrderID) DESC;
