/* 8.3.	������� ����������� � �������� ���������, ��� ��������� ��������� Seafood. */



SELECT s.CompanyName, p.ProductName
FROM Suppliers AS s
INNER JOIN
Products AS p
ON s.SupplierID = p.SupplierID
INNER JOIN
Categories AS c
ON c.CategoryID = p.CategoryID
WHERE c.CategoryName = 'Seafood'
