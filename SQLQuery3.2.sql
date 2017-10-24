﻿
/* 3.2	Выбрать из таблицы Customers всех заказчиков, не проживающих в USA и Canada. 
Запрос сделать с помощью оператора IN. 
Высвечивать колонки с именем пользователя и названием страны в результатах запроса. 
Упорядочить результаты запроса по имени заказчиков. */

SELECT ContactName, Country
FROM Customers
WHERE Country NOT IN ('USA', 'Canada')
ORDER BY ContactName;