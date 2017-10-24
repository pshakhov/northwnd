
/* 7.3 Найти покупателей и продавцов, которые живут в одном городе. 
Если в городе живут только один или несколько продавцов или только один или несколько покупателей, 
то информация о таких покупателя и продавцах не должна попадать в результирующий набор. 
Не использовать конструкцию JOIN. 
В результатах запроса необходимо вывести следующие заголовки для результатов запроса:
‘Person’, ‘Type’ (здесь надо выводить строку ‘Customer’ или  ‘Seller’ в завимости от типа записи), ‘City’. 
Отсортировать результаты запроса по колонке ‘City’ и по ‘Person’ */



SELECT c.ContactName AS Person, 'Customer' AS Type, c.City AS City
FROM Customers AS c
WHERE EXISTS (
              SELECT e.City 
              FROM Employees AS e
              WHERE e.City=c.City
              )
UNION ALL
SELECT e.FirstName+' '+e.LastName AS Person, 'Seller' AS Type, e.City AS City
FROM Employees AS e
WHERE EXISTS (
              SELECT c.City 
              FROM Customers AS c
              WHERE e.City=c.City
              )
			  ORDER BY City, Person;
