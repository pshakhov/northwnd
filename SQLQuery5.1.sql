
/* 5.1. Выбрать из таблицы Customers все названия компаний, начинающиеся на “Fran”. */

SELECT CompanyName
FROM Customers
WHERE CompanyName LIKE 'Fran%';