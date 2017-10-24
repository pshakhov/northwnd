
/* 8.1.	������� ������ ������� � �����, ��� ��������, ����������� � �������. ������������ JOIN */



SELECT DISTINCT o.OrderID, c.ContactName
FROM Orders AS o 
INNER JOIN
Customers AS c
ON c.City = o.ShipCity
WHERE c.City = 'London';
              