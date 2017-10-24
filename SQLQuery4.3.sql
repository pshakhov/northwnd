
/* 4.3	Выбрать всех заказчиков из таблицы Customers, 
у которых название страны начинается на буквы из диапазона a и g, не используя оператор BETWEEN. */

SELECT CustomerID, Country
FROM Customers
WHERE Country >= 'a' AND Country <= 'h'
ORDER BY Country;