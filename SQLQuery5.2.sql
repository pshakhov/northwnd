﻿
/* 5.2	В таблице Products найти все продукты (колонка ProductName), 
где встречается подстрока 'chocolade'. 
Известно, что в подстроке 'chocolade' может быть изменена одна буква 'c' в середине - 
найти все продукты, которые удовлетворяют этому условию. 
Подсказка: результаты запроса должны высвечивать 2 строки.*/

SELECT ProductName
FROM Products
WHERE ProductName LIKE '%cho_olade';