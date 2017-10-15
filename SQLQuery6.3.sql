/* 6.4	Найти максимальный и минимальный из всех заказов из таблицы Order Details с учетом количества закупленных товаров и скидок по ним. 
Результат округлить до сотых. 
Результатом запроса должна быть одна запись с двумя колонками с названиями 'MAX_ORDER' и 'MIN_ORDER' */

SELECT ROUND(MAX((UnitPrice * (1 - Discount))* Quantity), 2) AS [MAX_ORDER], ROUND(MIN((UnitPrice * (1 - Discount))* Quantity), 2) AS [MIN_ORDER]
FROM [Order Details]