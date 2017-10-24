
/* 2.1 Вывести цены на единицу продуктов из таблицы Products, округлив их до целого
Выводить только название продукта и цену на него. Использовать функцию CONVERT. */

SELECT ProductName, CONVERT(int, UnitPrice) AS UnitPrice
FROM Products;