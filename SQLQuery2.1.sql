
/* 2.1	Вывести цены на единицу продуктов из таблицы Products, округлив их до целого.
Выводить только название продукта и цену на него. Использовать функцию CAST. */

SELECT ProductName, CAST(UnitPrice AS int) AS UnitPrice
FROM Products;