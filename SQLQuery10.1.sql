
/* 10.1. ¬ысветить всех поставщиков колонка CompanyName в таблице Suppliers,
у которых нет хот€ бы одного продукта на складе (UnitsInStock в таблице Products равно 0). 
»спользовать вложенный SELECT дл€ этого запроса с использованием оператора IN.
ћожно ли использовать вместо оператора IN оператор '=' ? 

ѕримечание: да, можно*/
 

SELECT s.CompanyName 
FROM Suppliers as S
WHERE EXISTS
(
 SELECT *
 FROM Products AS p
 WHERE s.SupplierID = p.SupplierID AND p.UnitsInStock IN (0)
 );