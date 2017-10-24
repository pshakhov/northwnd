
/* 9.1.	��������� � ����������� ������� ����� ���� ���������� �� ������� Customers 
� ��������� ���������� �� ������� �� ������� Orders. 
������� �� ��������, ��� � ��������� ���������� ��� �������,
�� ��� ����� ������ ���� �������� � ����������� �������.
����������� ���������� ������� �� ����������� ���������� �������. */



SELECT c.ContactName AS [Customer Name], COUNT(o.OrderID) AS [Number of Orders]
FROM Customers AS c LEFT OUTER JOIN Orders AS o 
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.ContactName
ORDER BY [Number of Orders];