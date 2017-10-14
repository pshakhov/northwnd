/* 4.1.	Выбрать все заказы (OrderID) из таблицы Order Details (заказы не должны повторяться),
где встречаются продукты с количеством от 3 до 10 включительно – это колонка Quantity в таблице Order Details.
Использовать оператор BETWEEN. Запрос должен высвечивать только колонку OrderID. */

SELECT OrderID
FROM [Order Details]
WHERE Quantity BETWEEN '3' AND '10';