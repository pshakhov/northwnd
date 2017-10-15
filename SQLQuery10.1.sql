/* 10.1.	¬ысветить всех поставщиков колонка CompanyName в таблице Suppliers,
у которых нет хот€ бы одного продукта на складе (UnitsInStock в таблице Products равно 0). 
»спользовать вложенный SELECT дл€ этого запроса с использованием оператора IN.
ћожно ли использовать вместо оператора IN оператор '=' ? 

ѕримечание: да, можно*/


SELECT *
FROM
(SELECT s.CompanyName
FROM Suppliers AS s
JOIN
Products AS p
ON p.SupplierID = s.SupplierID
WHERE UnitsInStock IN ('0')) AS result
 

