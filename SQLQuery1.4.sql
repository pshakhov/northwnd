/* 1.4	Написать запрос, который выводит только недоставленные заказы из таблицы Orders. 
В результатах запроса высвечивать для колонки ShippedDate вместо значений NULL строку ‘Not Shipped’ – 
использовать системную функцию CASЕ. 
Запрос должен высвечивать только колонки OrderID и ShippedDate. */

SELECT OrderID,
CASE 
WHEN ShippedDate IS NULL 
THEN 'Not shipped' 
END AS "ShippedDate"
FROM Orders
WHERE ShippedDate IS NULL