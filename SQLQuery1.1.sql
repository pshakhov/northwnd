
/* 1.1	Выбрать в таблице Orders заказы, которые были доставлены после 6 мая 1998 года (колонка ShippedDate)
включительно и которые доставлены с ShipVia >= 2. Формат указания даты должен быть верным при любых 
региональных настройках, согласно требованиям статьи “Writing International Transact-SQL Statements” 
в Books Online раздел “Accessing and Changing Relational Data”. 
Запрос должен высвечивать только колонки OrderID, ShippedDate и ShipVia.

Пояснить почему сюда не попали заказы с NULL-ом в колонке ShippedDate.
Сюда не попали заказы с NULL-ом в колонке ShippedDate потому, что условие требует одновременного
выполнения двух выражений - дата доставки начинается с 06.05.1998 и что доставка через "2"*/

SELECT OrderID, ShippedDate, ShipVia 
FROM Orders 
WHERE ShippedDate>='1998-05-06' AND ShipVia>='2'
ORDER BY ShippedDate;
