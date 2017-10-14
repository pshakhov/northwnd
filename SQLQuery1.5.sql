
/* 1.5	Выбрать в таблице Orders заказы, которые были доставлены после 6 мая 1998 года (ShippedDate) 
не включая эту дату или которые еще не доставлены. 
В запросе должны высвечиваться только колонки OrderID (переименовать в Order Number)
и ShippedDate (переименовать в Shipped Date). 
В результатах запроса высвечивать для колонки ShippedDate вместо значений NULL строку ‘Not Shipped’, 
для остальных значений высвечивать дату в формате по умолчанию. */

SELECT OrderID AS OrderNumber, ShippedDate AS ShippedDate,
CASE 
WHEN ShippedDate IS NULL THEN 'Not Shipped'
END
FROM Orders
WHERE ShippedDate IS NULL OR ShippedDate >= '1998-05-06'